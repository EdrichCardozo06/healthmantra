# **HealthMantra**  

### **A Yoga Pose Identification Web Application**  

---

## **Introduction**  

**HealthMantra** is a responsive web application designed to help users identify yoga poses. It leverages a **Flask** backend and a custom-trained `.h5` model to classify 20 different yoga poses with high accuracy.  

Whether you're a yoga enthusiast or a beginner, HealthMantra provides an intuitive platform to learn and refine your poses by leveraging cutting-edge machine learning technology.  

---

## **Features**  
- 🧘‍♂️ **Yoga Pose Classification**: Identifies 20 yoga poses, including:(See the full list [here](#label-mapping)).  
- 🌐 **Responsive Web Design**: Works seamlessly on mobile, tablet, and desktop.  
- ⚙️ **Powered by Flask**: Robust backend for hosting and processing the trained `.h5` model.  
- 📊 **Model Integration**: Custom-trained TensorFlow/Keras model for pose detection.  

---

## **Label Mapping**  
The application supports the following yoga poses:  

```python
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
```
## **Installation**  

### **Step 1: Clone the Repository**  
```bash
git clone https://github.com/your-username/HealthMantra.git
cd HealthMantra
```
### **Step 2: Set Up the Environment**
 1.Create a virtual environment:
```bash
python -m venv venv
source venv/bin/activate
# On Windows: venv\Scripts\activate
```
 2.Install dependencies:
```bash
pip install -r requirements.txt
```
### **Step 3: Run the Application**
```bash
python app.py
```

The web application will be available at http://127.0.0.1:5000/.

---
### **Demo**

https://github.com/user-attachments/assets/3d48392d-ac5b-4ea6-8e50-a5888b067cf5





