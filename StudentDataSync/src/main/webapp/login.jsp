<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login Page</title>
    <!-- Bootstrap CSS for styling -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        /* Full-page layout */
        body {
            margin: 0;
            padding: 0;
            height: 100vh;
            display: flex;
            align-items: center;
            justify-content: center;
        }
        
        /* Background image section */
        .background-section {
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background: url('/imagess/pexels-pixabay-268533.jpg') no-repeat center center/cover;
            z-index: -1; /* Place behind other elements */
        }
        
        /* Login container styling */
        .login-container {
            background: rgba(0, 0, 0, 0.4); /* Semi-transparent background */
            padding: 40px;
            border-radius: 12px;
            box-shadow: 0px 6px 15px rgba(0, 0, 0, 0.5);
            transition: transform 0.3s ease-in-out;
            backdrop-filter: blur(5px); /* Blur effect */
        }
        
        /* Hover effect for login container */
        .login-container:hover {
            transform: scale(1.05);
        }
        
        /* Login heading style */
        .login-container h2 {
            color: #ffffff;
            font-size: 28px;
            font-weight: bold;
            margin-bottom: 20px;
        }
        
        /* Input field styling */
        .form-control {
            background: rgba(255, 255, 255, 0.1);
            border: 1px solid #ffffff;
            color: #ffffff;
            transition: 0.3s;
        }
        
        /* Focus effect for input fields */
        .form-control:focus {
            background: rgba(255, 255, 255, 0.2);
            color: #ffffff;
            box-shadow: 0px 0px 8px rgba(255, 255, 255, 0.5);
        }
        
        /* Custom login button */
        .btn-custom {
            background: linear-gradient(90deg, #ff4b5c, blue);
            border: none;
            color: white;
            font-weight: bold;
            padding: 14px 22px;
            transition: 0.3s;
            border-radius: 6px;
            font-size: 16px;
        }
        
        /* Hover effect for login button */
        .btn-custom:hover {
            background: linear-gradient(90deg, #ff6b81, blue);
            box-shadow: 0px 4px 10px rgba(255, 75, 92, 0.5);
        }
        
        /* Forgot password link style */
        .forgot-password {
            color: blue;
            text-decoration: none;
            font-size: 14px;
            transition: 0.3s;
        }
        
        /* Hover effect for forgot password link */
        .forgot-password:hover {
            text-decoration: underline;
            color: #ff4b5c;
        }
    </style>
</head>
<body>
    <!-- Background image section -->
    <section class="background-section"></section>
    
    <!-- Login form container -->
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-5">
                <div class="login-container text-center">
                    <h2 class="fw-bold">Login</h2>
                    <p class="text-white-50">Please enter your login and password!</p>
                    <form action="login">
                        <!-- Username input field -->
                        <div class="mb-3 text-start">
                            <label class="form-label text-white">Username</label>
                            <input type="text" name="username" class="form-control" required>
                        </div>
                        
                        <!-- Password input field -->
                        <div class="mb-3 text-start">
                            <label class="form-label text-white">Password</label>
                            <input type="password" name="password" class="form-control" required>
                        </div>
                        
                        <!-- Forgot password link -->
                        <div class="mb-3 text-end">
                            <a href="#" class="forgot-password">Forgot password?</a>
                        </div>
                        
                        <!-- Login button -->
                        <button type="submit" class="btn btn-custom w-100">Login</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
    
    <!-- Bootstrap JS for functionality -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>