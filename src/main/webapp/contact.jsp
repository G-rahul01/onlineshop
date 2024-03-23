<!DOCTYPE html>
<html lang="en">
<head>
    <title>messager</title>
    <link rel="stylesheet" href="style.css">
    <style>

body {
  font-family: Arial, sans-serif;
  background-color: #ff3e6c;
  margin: 0;
  padding: 0;
}

.contact {
  width: 80%;
  max-width: 600px;
  margin: 50px auto;
  background-color: #fff;
  border-radius: 8px;
  box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
  padding: 30px;
}

.contact h2 {
  text-align: center;
  margin-bottom: 30px;
  color: #333;
}

.input-field {
  margin-bottom: 20px;
  margin-right:20px;
}

.item {
  width: 100%;
  padding: 10px;
  border: 1px solid #ccc;
  border-radius: 5px;
}

.textarea-field {
    margin-bottom: 20px;
    margin-right:20px;
}

textarea {
    width: 100%;
    padding: 10px;
    border: 1px solid #ccc;
    border-radius: 5px;
    resize: none; /* Prevent resizing */
}

button {
  padding: 10px 20px;
  background-color: green;
  color: #fff;
  border: none;
  border-radius: 5px;
  cursor: pointer;
  width: 100%;
}

button:hover {
  background-color: darkgreen;
}
a{
  text-decoration:none;
  color:white;

}
.btn {
  margin-top: 10px;
  background-color: red;
  border: none;
  color: #007bff;
}

.btn:hover {
  background-color: darkred;
  color: #fff;
}

.error-txt {
  color: red;
  display: none;
}

.error {
  border-color: red;
}

.success {
  border-color: green;
}

.error-txt.active {
  display: block;
  margin-top: 5px;
}

.copyright {
  text-align: center;
  margin-top: 20px;
  color: #777;
}

    </style>
</head>
<body>
<section class="contact">
    <h2>Contect Me!</h2>
    <form action="#">
        <div class="input-box">
            <div class="input-field field">
                <input type="text" placeholder="Full Name" id="name" class="item" autocomplete="off">
                <div class="error-txt">Full Name can't be blank</div>
            </div>
            <div class="input-field field">
                <input type="email" placeholder="Email" id="email" class="item" autocomplete="off">
                <div class="error-txt">Email can't be blank</div>
            </div>

        </div>
        <div class="input-box">
            <div class="input-field field">
                <input type="text" placeholder="Phone Number" id="phone" class="item" autocomplete="off">
                <div class="error-txt">Phone number can't be blank</div>
            </div>
            <div class="input-field field">
                <input type="text" placeholder="Subject" id="subject" class="item" autocomplete="off">
                <div class="error-txt">Subject can't be blank</div>
            </div>

        </div>
        <div class="textarea-field field">
            <textarea id="message" cols="30" rows="10" placeholder="Your Massage" class="item" aria-autocomplete="off"></textarea>
            <div class="error-txt">Message can't be blank</div>
        </div>
        <button type="submit">Send Message</button>
        <button type="button" class="btn btn-outline-warning"><a href="Home.jsp">Back To Shopping</a></button><br>
        <h5 class="copyright">Copyright © Perfumy Online Shop Private Limited. All rights reserved.</h5>
    </form>
</section>

<script src="https://smtpjs.com/v3/smtp.js"></script>
<script src="chat.js"></script>
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>

</body>
</html>
