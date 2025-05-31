pub fn not_found() -> String {
  "
<!DOCTYPE html>
<html lang=\"en\">
<head>
  <meta charset=\"UTF-8\">
  <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">
  <title>404 Not Found</title>
  <link href=\"https://fonts.googleapis.com/css2?family=Roboto:wght@400;700&display=swap\" rel=\"stylesheet\">
  <style>
    :root {
      --primary: #141E30;
      --secondary: #243B55;
      --accent: #00f7ff;
      --light-bg: rgba(20, 30, 48, 0.4);
    }
    
    body {
      margin: 0;
      padding: 0;
      font-family: 'Roboto', sans-serif;
      background: linear-gradient(135deg, var(--primary), var(--secondary));
      color: #f0f0f0;
      height: 100vh;
      display: flex;
      align-items: center;
      justify-content: center;
      overflow: hidden;
      position: relative;
    }

    .container {
      position: relative;
      padding: 60px 80px;
      background: var(--light-bg);
      border-radius: 20px;
      box-shadow: 0 20px 40px rgba(0, 0, 0, 0.4);
      text-align: center;
      overflow: hidden;
    }
    
    .container::before {
      content: '';
      position: absolute;
      top: -50%;
      left: -50%;
      width: 200%;
      height: 200%;
      background: radial-gradient(circle at center, var(--accent), transparent 70%);
      animation: rotate 6s linear infinite;
      z-index: -1;
      opacity: 0.3;
    }

    h1 {
      font-size: 120px;
      margin: 0 0 20px;
      background: linear-gradient(45deg, #fff, var(--accent));
      -webkit-background-clip: text;
      -webkit-text-fill-color: transparent;
      animation: pulseGlow 2s ease-in-out infinite;
      text-shadow: 0 0 20px rgba(0, 247, 255, 0.5);
    }

    p {
      font-size: 22px;
      margin: 0 0 35px;
      animation: fadeInUp 1.5s ease-out;
      text-shadow: 0 2px 5px rgba(0, 0, 0, 0.2);
    }

    a {
      position: relative;
      z-index: 1;
      text-decoration: none;
      padding: 15px 30px;
      color: var(--primary);
      font-weight: bold;
      font-size: 18px;
      border-radius: 30px;
      background: #fff;
      box-shadow: 0 8px 20px rgba(0, 0, 0, 0.2);
      overflow: hidden;
      transition: all 0.3s ease;
    }

    a:hover {
      transform: translateY(-3px);
      background: var(--accent);
      color: var(--primary);
      box-shadow: 0 10px 25px rgba(0, 0, 0, 0.3);
    }

    a::before {
      content: '';
      position: absolute;
      top: 50%;
      left: 50%;
      width: 0;
      height: 0;
      background: rgba(255, 255, 255, 0.3);
      border-radius: 50%;
      transform: translate(-50%, -50%);
      transition: width 0.6s ease, height 0.6s ease;
    }

    a:hover::before {
      width: 300px;
      height: 300px;
    }

    @keyframes rotate {
      from { transform: rotate(0deg); }
      to { transform: rotate(360deg); }
    }

    @keyframes pulseGlow {
      0%, 100% { opacity: 1; transform: scale(1); }
      50% { opacity: 0.8; transform: scale(0.98); }
    }

    @keyframes fadeInUp {
      from { opacity: 0; transform: translateY(20px); }
      to { opacity: 1; transform: translateY(0); }
    }
  </style>
</head>
<body>
  <div class=\"container\">
    <h1>404</h1>
    <p>I'm no expert here, but you might be lost.</p>
    <a href=\"/\">Return Home</a>
  </div>
</body>
</html>
  "
}

pub fn bad_request() -> String {
  "
<!DOCTYPE html>
<html lang=\"en\">
<head>
  <meta charset=\"UTF-8\">
  <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">
  <title>400 Bad Request</title>
  <link href=\"https://fonts.googleapis.com/css2?family=Roboto:wght@400;700&display=swap\" rel=\"stylesheet\">
  <style>
    :root {
      --primary: #141E30;
      --secondary: #243B55;
      --accent: #00f7ff;
      --light-bg: rgba(20, 30, 48, 0.4);
    }
    
    body {
      margin: 0;
      padding: 0;
      font-family: 'Roboto', sans-serif;
      background: linear-gradient(135deg, var(--primary), var(--secondary));
      color: #f0f0f0;
      height: 100vh;
      display: flex;
      align-items: center;
      justify-content: center;
      overflow: hidden;
      position: relative;
    }

    .container {
      position: relative;
      padding: 60px 80px;
      background: var(--light-bg);
      border-radius: 20px;
      box-shadow: 0 20px 40px rgba(0, 0, 0, 0.4);
      text-align: center;
      overflow: hidden;
    }
    
    .container::before {
      content: '';
      position: absolute;
      top: -50%;
      left: -50%;
      width: 200%;
      height: 200%;
      background: radial-gradient(circle at center, var(--accent), transparent 70%);
      animation: rotate 6s linear infinite;
      z-index: -1;
      opacity: 0.3;
    }

    h1 {
      font-size: 120px;
      margin: 0 0 20px;
      background: linear-gradient(45deg, #fff, var(--accent));
      -webkit-background-clip: text;
      -webkit-text-fill-color: transparent;
      animation: pulseGlow 2s ease-in-out infinite;
      text-shadow: 0 0 20px rgba(0, 247, 255, 0.5);
    }

    p {
      font-size: 22px;
      margin: 0 0 35px;
      animation: fadeInUp 1.5s ease-out;
      text-shadow: 0 2px 5px rgba(0, 0, 0, 0.2);
    }

    a {
      position: relative;
      z-index: 1;
      text-decoration: none;
      padding: 15px 30px;
      color: var(--primary);
      font-weight: bold;
      font-size: 18px;
      border-radius: 30px;
      background: #fff;
      box-shadow: 0 8px 20px rgba(0, 0, 0, 0.2);
      overflow: hidden;
      transition: all 0.3s ease;
    }

    a:hover {
      transform: translateY(-3px);
      background: var(--accent);
      color: var(--primary);
      box-shadow: 0 10px 25px rgba(0, 0, 0, 0.3);
    }

    a::before {
      content: '';
      position: absolute;
      top: 50%;
      left: 50%;
      width: 0;
      height: 0;
      background: rgba(255, 255, 255, 0.3);
      border-radius: 50%;
      transform: translate(-50%, -50%);
      transition: width 0.6s ease, height 0.6s ease;
    }

    a:hover::before {
      width: 300px;
      height: 300px;
    }

    @keyframes rotate {
      from { transform: rotate(0deg); }
      to { transform: rotate(360deg); }
    }

    @keyframes pulseGlow {
      0%, 100% { opacity: 1; transform: scale(1); }
      50% { opacity: 0.8; transform: scale(0.98); }
    }

    @keyframes fadeInUp {
      from { opacity: 0; transform: translateY(20px); }
      to { opacity: 1; transform: translateY(0); }
    }
  </style>
</head>
<body>
  <div class=\"container\">
    <h1>400</h1>
    <p>Bad Request. The server could not understand your request.</p>
    <a href=\"/\">Return Home</a>
  </div>
</body>
</html>
  "
}

pub fn too_large() -> String {
  "
<!DOCTYPE html>
<html lang=\"en\">
<head>
  <meta charset=\"UTF-8\">
  <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">
  <title>413 Too Large</title>
  <link href=\"https://fonts.googleapis.com/css2?family=Roboto:wght@400;700&display=swap\" rel=\"stylesheet\">
  <style>
    :root {
      --primary: #141E30;
      --secondary: #243B55;
      --accent: #00f7ff;
      --light-bg: rgba(20, 30, 48, 0.4);
    }

    body {
      margin: 0;
      padding: 0;
      font-family: 'Roboto', sans-serif;
      background: linear-gradient(135deg, var(--primary), var(--secondary));
      color: #f0f0f0;
      height: 100vh;
      display: flex;
      align-items: center;
      justify-content: center;
      overflow: hidden;
      position: relative;
    }

    .container {
      position: relative;
      padding: 60px 80px;
      background: var(--light-bg);
      border-radius: 20px;
      box-shadow: 0 20px 40px rgba(0, 0, 0, 0.4);
      text-align: center;
      overflow: hidden;
    }
    
    .container::before {
      content: '';
      position: absolute;
      top: -50%;
      left: -50%;
      width: 200%;
      height: 200%;
      background: radial-gradient(circle at center, var(--accent), transparent 70%);
      animation: rotate 6s linear infinite;
      z-index: -1;
      opacity: 0.3;
    }

    h1 {
      font-size: 120px;
      margin: 0 0 20px;
      background: linear-gradient(45deg, #fff, var(--accent));
      -webkit-background-clip: text;
      -webkit-text-fill-color: transparent;
      animation: pulseGlow 2s ease-in-out infinite;
      text-shadow: 0 0 20px rgba(0, 247, 255, 0.5);
    }

    p {
      font-size: 22px;
      margin: 0 0 35px;
      animation: fadeInUp 1.5s ease-out;
      text-shadow: 0 2px 5px rgba(0, 0, 0, 0.2);
    }

    a {
      position: relative;
      z-index: 1;
      text-decoration: none;
      padding: 15px 30px;
      color: var(--primary);
      font-weight: bold;
      font-size: 18px;
      border-radius: 30px;
      background: #fff;
      box-shadow: 0 8px 20px rgba(0, 0, 0, 0.2);
      overflow: hidden;
      transition: all 0.3s ease;
    }

    a:hover {
      transform: translateY(-3px);
      background: var(--accent);
      color: var(--primary);
      box-shadow: 0 10px 25px rgba(0, 0, 0, 0.3);
    }

    a::before {
      content: '';
      position: absolute;
      top: 50%;
      left: 50%;
      width: 0;
      height: 0;
      background: rgba(255, 255, 255, 0.3);
      border-radius: 50%;
      transform: translate(-50%, -50%);
      transition: width 0.6s ease, height 0.6s ease;
    }

    a:hover::before {
      width: 300px;
      height: 300px;
    }

    @keyframes rotate {
      from { transform: rotate(0deg); }
      to { transform: rotate(360deg); }
    }

    @keyframes pulseGlow {
      0%, 100% { opacity: 1; transform: scale(1); }
      50% { opacity: 0.8; transform: scale(0.98); }
    }

    @keyframes fadeInUp {
      from { opacity: 0; transform: translateY(20px); }
      to { opacity: 1; transform: translateY(0); }
    }
  </style>
</head>
<body>
  <div class=\"container\">
    <h1>413</h1>
    <p>Too Large. The request is too large for the server to process.</p>
    <a href=\"/\">Return Home</a>
  </div>
</body>
</html>
  "
}

pub fn server_error() -> String {
  "
<!DOCTYPE html>
<html lang=\"en\">
<head>
  <meta charset=\"UTF-8\">
  <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">
  <title>500 Internal Server Error</title>
  <link href=\"https://fonts.googleapis.com/css2?family=Roboto:wght@400;700&display=swap\" rel=\"stylesheet\">
  <style>
    :root {
      --primary: #141E30;
      --secondary: #243B55;
      --accent: #00f7ff;
      --light-bg: rgba(20, 30, 48, 0.4);
    }

    body {
      margin: 0;
      padding: 0;
      font-family: 'Roboto', sans-serif;
      background: linear-gradient(135deg, var(--primary), var(--secondary));
      color: #f0f0f0;
      height: 100vh;
      display: flex;
      align-items: center;
      justify-content: center;
      overflow: hidden;
      position: relative;
    }
    
    .container {
      position: relative;
      padding: 60px 80px;
      background: var(--light-bg);
      border-radius: 20px;
      box-shadow: 0 20px 40px rgba(0, 0, 0, 0.4);
      text-align: center;
      overflow: hidden;
    }
    
    .container::before {
      content: '';
      position: absolute;
      top: -50%;
      left: -50%;
      width: 200%;
      height: 200%;
      background: radial-gradient(circle at center, var(--accent), transparent 70%);
      animation: rotate 6s linear infinite;
      z-index: -1;
      opacity: 0.3;
    }
    
    h1 {
      font-size: 120px;
      margin: 0 0 20px;
      background: linear-gradient(45deg, #fff, var(--accent));
      -webkit-background-clip: text;
      -webkit-text-fill-color: transparent;
      animation: pulseGlow 2s ease-in-out infinite;
      text-shadow: 0 0 20px rgba(0, 247, 255, 0.5);
    }
    
    p {
      font-size: 22px;
      margin: 0 0 35px;
      animation: fadeInUp 1.5s ease-out;
      text-shadow: 0 2px 5px rgba(0, 0, 0, 0.2);
    }
    
    a {
      position: relative;
      z-index: 1;
      text-decoration: none;
      padding: 15px 30px;
      color: var(--primary);
      font-weight: bold;
      font-size: 18px;
      border-radius: 30px;
      background: #fff;
      box-shadow: 0 8px 20px rgba(0, 0, 0, 0.2);
      overflow: hidden;
      transition: all 0.3s ease;
    }
    
    a:hover {
      transform: translateY(-3px);
      background: var(--accent);
      color: var(--primary);
      box-shadow: 0 10px 25px rgba(0, 0, 0, 0.3);
    }
    
    a::before {
      content: '';
      position: absolute;
      top: 50%;
      left: 50%;
      width: 0;
      height: 0;
      background: rgba(255, 255, 255, 0.3);
      border-radius: 50%;
      transform: translate(-50%, -50%);
      transition: width 0.6s ease, height 0.6s ease;
    }
    
    a:hover::before {
      width: 300px;
      height: 300px;
    }
    
    @keyframes rotate {
      from { transform: rotate(0deg); }
      to { transform: rotate(360deg); }
    }
    
    @keyframes pulseGlow {
      0%, 100% { opacity: 1; transform: scale(1); }
      50% { opacity: 0.8; transform: scale(0.98); }
    }
    
    @keyframes fadeInUp {
      from { opacity: 0; transform: translateY(20px); }
      to { opacity: 1; transform: translateY(0); }
    }
  </style>
</head>
<body>
  <div class=\"container\">
    <h1>500</h1>
    <p>Internal Server Error. Something went wrong on our end.</p>
    <a href=\"/\">Return Home</a>
  </div>
</body>
</html>
  "
}
