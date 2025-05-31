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
    body { 
      margin: 0; 
      font-family: 'Roboto', sans-serif; 
      display: flex; 
      align-items: center; 
      justify-content: center; 
      height: 100vh; 
      background: #141E30; 
      color: #fff;
    }
    .container { 
      text-align: center; 
      padding: 30px; 
    }
    h1 { 
      font-size: 80px; 
      margin-bottom: 0.5em; 
    }
    p { 
      font-size: 20px; 
      margin-bottom: 1em; 
    }
    a {
      text-decoration: none;
      background: #fff;
      color: #141E30;
      padding: 10px 20px;
      border-radius: 5px;
      transition: background 0.3s;
    }
    a:hover { background: #e0e0e0; }
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
    body { 
      margin: 0; 
      font-family: 'Roboto', sans-serif;
      display: flex; 
      align-items: center; 
      justify-content: center; 
      height: 100vh; 
      background: #243B55; 
      color: #fff;
    }
    .container { 
      text-align: center; 
      padding: 30px; 
    }
    h1 { 
      font-size: 80px; 
      margin-bottom: 0.5em; 
    }
    p { 
      font-size: 20px; 
      margin-bottom: 1em; 
    }
    a {
      text-decoration: none;
      background: #fff;
      color: #243B55;
      padding: 10px 20px;
      border-radius: 5px;
      transition: background 0.3s;
    }
    a:hover { background: #e0e0e0; }
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
    body { 
      margin: 0; 
      font-family: 'Roboto', sans-serif;
      display: flex; 
      align-items: center; 
      justify-content: center; 
      height: 100vh; 
      background: #141E30; 
      color: #fff;
    }
    .container { 
      text-align: center; 
      padding: 30px; 
    }
    h1 { 
      font-size: 80px; 
      margin-bottom: 0.5em; 
    }
    p { 
      font-size: 20px; 
      margin-bottom: 1em; 
    }
    a {
      text-decoration: none;
      background: #fff;
      color: #141E30;
      padding: 10px 20px;
      border-radius: 5px;
      transition: background 0.3s;
    }
    a:hover { background: #e0e0e0; }
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
    body { 
      margin: 0; 
      font-family: 'Roboto', sans-serif;
      display: flex; 
      align-items: center; 
      justify-content: center; 
      height: 100vh; 
      background: #243B55; 
      color: #fff;
    }
    .container { 
      text-align: center; 
      padding: 30px; 
    }
    h1 { 
      font-size: 80px; 
      margin-bottom: 0.5em;
    }
    p { 
      font-size: 20px; 
      margin-bottom: 1em;
    }
    a {
      text-decoration: none;
      background: #fff;
      color: #243B55;
      padding: 10px 20px;
      border-radius: 5px;
      transition: background 0.3s;
    }
    a:hover { background: #e0e0e0; }
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
