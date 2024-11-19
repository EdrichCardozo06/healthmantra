import os
from flask import Flask, render_template, redirect, request, flash
from flask_mysqldb import MySQL, MySQLdb
from werkzeug.utils import secure_filename
import tensorflow as tf
import numpy as np
from datetime import datetime

app = Flask(__name__, static_url_path='/static')
app.secret_key = "caircocoders-ednalan"

app.config['MYSQL_HOST'] = 'localhost'
app.config['MYSQL_USER'] = 'root'
app.config['MYSQL_PASSWORD'] = ''
app.config['MYSQL_DB'] = 'testingdb'
app.config['MYSQL_CURSORCLASS'] = 'DictCursor'
mysql = MySQL(app)

UPLOAD_FOLDER = 'static/uploads'
app.config['UPLOAD_FOLDER'] = UPLOAD_FOLDER

ALLOWED_EXTENSIONS = set(['png', 'jpg', 'jpeg', 'gif'])

# Function to check if the file has an allowed extension
def allowed_file(filename):
    return '.' in filename and filename.rsplit('.', 1)[1].lower() in ALLOWED_EXTENSIONS

# Load the trained model for yoga pose prediction
model = tf.keras.models.load_model('my_model_final.h5')

# Define the label mapping dictionary
label_mapping = {
    0: 'Adho Mukha Svanasana',
    1: 'Adho Mukha Vrksasana',
    2: 'Alanasana',
    3: 'Anjaneyasana',
    4: 'Ardha Chandrasana',
    5: 'Ardha Matsyendrasana',
    6: 'Ardha Navasana',
    7: 'Ardha Pincha Mayurasana',
    8: 'Ashta Chandrasana',
    9: 'Baddha Konasana',
    10: 'Bakasana',
    11: 'Balasana',
    12: 'Bitilasana',
    13: 'Camatkarasana',
    14: 'Dhanurasana',
    15: 'Eka Pada Rajakapotasana',
    16: 'Garudasana',
    17: 'Halasana',
    18: 'Hanumanasana',
    19: 'Malasana',
    20: 'Marjaryasana',
}

# Function to preprocess the input image
def preprocess_image(image_path):
    image = tf.keras.preprocessing.image.load_img(image_path, target_size=(224, 224))
    image_array = tf.keras.preprocessing.image.img_to_array(image)
    image_array = np.expand_dims(image_array, axis=0)
    image_array = tf.keras.applications.mobilenet_v3.preprocess_input(image_array)
    return image_array

# Function to predict the pose from a given image path
def predict_pose(image_path):
    image_array = preprocess_image(image_path)
    predictions = model.predict(image_array)
    predicted_label_numeric = np.argmax(predictions, axis=1)[0]
    predicted_pose = label_mapping.get(predicted_label_numeric, 'Unknown Pose, please input a valid image')
    return predicted_pose

@app.route('/', methods=["POST", "GET"])
def index():
    return render_template('index11.html')

@app.route("/upload", methods=["POST", "GET"])
def upload():
    cursor = mysql.connection.cursor()
    cur = mysql.connection.cursor(MySQLdb.cursors.DictCursor)
    now = datetime.now()
    predicted_poses = []
    uploaded_image = None  # Initialize the uploaded_image variable

    if request.method == 'POST':
        files = request.files.getlist('files[]')
        for file in files:
            if file and allowed_file(file.filename):
                filename = secure_filename(file.filename)
                file.save(os.path.join(app.config['UPLOAD_FOLDER'], filename))
                cur.execute("INSERT INTO images12 (file_name, uploaded_on) VALUES (%s, %s)", [filename, now])
                mysql.connection.commit()

                predicted_pose = predict_pose(os.path.join(app.config['UPLOAD_FOLDER'], filename))
                predicted_poses.append(predicted_pose)
                uploaded_image = filename  # Set the uploaded_image variable

        cur.close()
        flash('File(s) successfully uploaded')

    return render_template('index11.html', uploaded_image=uploaded_image, predicted_poses=predicted_poses)

@app.route('/display/all', methods=["GET"])
def display_all_images():
    cursor = mysql.connection.cursor()
    cur = mysql.connection.cursor(MySQLdb.cursors.DictCursor)

    cur.execute("SELECT * FROM images12")
    images = cur.fetchall()

    return render_template('display_all.html', images=images)

if __name__ == "__main__":
    app.run(debug=True)
