<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>contact</title>
<link rel="Stylesheet" href="contact.css">
</head>
<body>

<section class="contact-form">
    <div class="form-container">
        <h2>Your Details</h2>

        <!-- Firebase form (NO action, NO method) -->
        <form id="contactForm">

            <label for="name">Name: </label>
            <input type="text" id="name" name="name" required>

            <label for="email">Email: </label>
            <input type="email" id="email" name="email" required>

            <label for="phone">Phone: </label>
            <input type="tel" id="phone" name="phone">

            <label for="message">Message: </label>
            <textarea id="message" name="message" rows="4" required></textarea>

            <button type="submit" class="submit-button">Submit</button>
        </form>
    </div>
</section>

<center>
    <div class="id">
        <a href="profile.jsp"> Go to home page</a>
    </div>
</center>



<!-- ⭐ FIREBASE SCRIPT START ⭐ -->
<script type="module">

    // 🟡 Firebase Latest CDN (v12.6.0)
    import { initializeApp } from "https://www.gstatic.com/firebasejs/12.6.0/firebase-app.js";
    import { getAnalytics } from "https://www.gstatic.com/firebasejs/12.6.0/firebase-analytics.js";

    // Firestore import
    import { 
        getFirestore, 
        addDoc, 
        collection, 
        serverTimestamp 
    } from "https://www.gstatic.com/firebasejs/12.6.0/firebase-firestore.js";


    // 🟡 YOUR FIREBASE CONFIG
    const firebaseConfig = {
        apiKey: "AIzaSyDjyyclPsohGvcHuk5mUwbBjPL3O4AXT68",
        authDomain: "portfolio-bf19f.firebaseapp.com",
        projectId: "portfolio-bf19f",
        storageBucket: "portfolio-bf19f.firebasestorage.app",
        messagingSenderId: "292766116204",
        appId: "1:292766116204:web:2d092199b88b2b962beb49",
        measurementId: "G-6CZKTFJE69"
    };

    // Initialize Firebase
    const app = initializeApp(firebaseConfig);
    const analytics = getAnalytics(app);
    const db = getFirestore(app);   // ⭐ Firestore initialized


    // ⭐ FORM SUBMIT EVENT — SAVE TO FIRESTORE
    document.getElementById("contactForm").addEventListener("submit", async (e) => {
        e.preventDefault(); // stop page reload

        // Get input values
        let name = document.getElementById("name").value;
        let email = document.getElementById("email").value;
        let phone = document.getElementById("phone").value;
        let message = document.getElementById("message").value;

        try {
            // Save document to collection "contactMessages"
            await addDoc(collection(db, "contactMessages"), {
                name: name,
                email: email,
                phone: phone,
                message: message,
                timestamp: serverTimestamp()
            });

            alert("✔ Your message has been sent successfully!");
            document.getElementById("contactForm").reset();

        } catch (error) {
            console.error("Error saving message:", error);
            alert("❌ Something went wrong. Check console.");
        }
    });

</script>
<!-- ⭐ FIREBASE SCRIPT END ⭐ -->

</body>
</html>
