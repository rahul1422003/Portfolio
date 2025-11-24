<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Contact - Rahul Yadav</title>
<link rel="stylesheet" href="contact.css?v=3">
</head>
<body>

<section class="contact-section">

    <div class="contact-card">
        <h1>Contact <span>Me</span></h1>

        <!-- Contact Form (Firebase Integrated) -->
        <form id="contactForm">

            <div class="form-group">
                <label>Name</label>
                <input type="text" id="name" required>
            </div>

            <div class="form-group">
                <label>Email</label>
                <input type="email" id="email" required>
            </div>

            <div class="form-group">
                <label>Phone</label>
                <input type="tel" id="phone">
            </div>

            <div class="form-group">
                <label>Message</label>
                <textarea id="message" rows="4" required></textarea>
            </div>

            <button type="submit" class="submit-btn">Send Message</button>
        </form>

        <div class="home-btn">
            <a href="profile.jsp">Go to Home Page</a>
        </div>
    </div>

</section>


<!-- ⭐ FIREBASE SCRIPT START ⭐ -->
<script type="module">

    import { initializeApp } from "https://www.gstatic.com/firebasejs/12.6.0/firebase-app.js";
    import { getAnalytics } from "https://www.gstatic.com/firebasejs/12.6.0/firebase-analytics.js";

    import { 
        getFirestore, 
        addDoc, 
        collection, 
        serverTimestamp 
    } from "https://www.gstatic.com/firebasejs/12.6.0/firebase-firestore.js";


    const firebaseConfig = {
        apiKey: "AIzaSyDjyyclPsohGvcHuk5mUwbBjPL3O4AXT68",
        authDomain: "portfolio-bf19f.firebaseapp.com",
        projectId: "portfolio-bf19f",
        storageBucket: "portfolio-bf19f.firebasestorage.app",
        messagingSenderId: "292766116204",
        appId: "1:292766116204:web:2d092199b88b2b962beb49",
        measurementId: "G-6CZKTFJE69"
    };

    const app = initializeApp(firebaseConfig);
    const analytics = getAnalytics(app);
    const db = getFirestore(app);


    document.getElementById("contactForm").addEventListener("submit", async (e) => {
        e.preventDefault();

        let name = document.getElementById("name").value;
        let email = document.getElementById("email").value;
        let phone = document.getElementById("phone").value;
        let message = document.getElementById("message").value;

        try {
            await addDoc(collection(db, "contactMessages"), {
                name,
                email,
                phone,
                message,
                timestamp: serverTimestamp()
            });

            alert("✔ Message sent successfully!");
            document.getElementById("contactForm").reset();

        } catch (error) {
            console.error("Error:", error);
            alert("❌ Something went wrong!");
        }
    });

</script>
<!-- ⭐ FIREBASE SCRIPT END ⭐ -->

</body>
</html>
