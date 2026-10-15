<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Welcome Page</title>
    <script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="flex items-center justify-center min-h-screen bg-gray-200">
    <div class="bg-white p-6 rounded-2xl shadow-lg w-96 text-center">
        <div class="bg-green-200 w-12 h-12 rounded-full mx-auto flex items-center justify-center">
            <span class="text-green-500 text-3xl">✔</span>
        </div>
        <h2 class="text-xl font-bold mt-4">Welcome to Torah Hub Premium!</h2>
        <p class="text-gray-500 mt-2">Your free trial has started. You now have full access to all premium features.</p>
        
        <form action="/welcome" method="POST" class="mt-4">
            <input type="text" value="{id}" name="id">
            <button type="submit" class="bg-blue-500 text-white w-full py-2 rounded mt-4">Start Learning</button>
        </form>
    </div>
</body>
</html>