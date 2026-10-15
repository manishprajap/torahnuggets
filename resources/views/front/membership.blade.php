<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Subscription Card</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://kit.fontawesome.com/a076d05399.js" crossorigin="anonymous"></script>
	 <script src="https://cdn.tailwindcss.com"></script>
    <style>
        body {
            background-color: #f8f9fa;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        .card {
            width: 400px;
            border-radius: 10px;
            box-shadow: 0px 4px 15px rgba(0, 0, 0, 0.1);
            padding: 25px;
            text-align: center;
            background-color: white;
            border: none;
        }
        .icon {
            font-size: 24px;
            background: #e3f2fd;
            color: #007bff;
            padding: 12px;
            border-radius: 50%;
            display: inline-block;
        }
        .price {
            font-size: 26px;
            font-weight: bold;
            margin: 10px 0;
        }
        .features {
            text-align: left;
            margin-top: 20px;
            padding: 0;
        }
        .features li {
            list-style: none;
            margin: 12px 0;
            font-size: 16px;
            font-weight: 500;
            display: flex;
            align-items: center;
        }
        .features li i {
            color: #28a745;
            font-size: 18px;
            margin-right: 10px;
        }
        .note {
            font-size: 14px;
            color: #007bff;
            background-color: #e7f3ff;
            padding: 10px;
            border-radius: 5px;
            margin-top: 15px;
        }
        .btn-primary {
            width: 100%;
            margin-top: 15px;
            padding: 12px;
            font-size: 16px;
            font-weight: bold;
            border-radius: 5px;
            background-color: #007bff;
            border: none;
        }
        .btn-primary:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>

<div class="card">
<form action="<?php echo url('member-save')?>" method="post">
                        @csrf
<div class="text-blue-500 text-3xl">🔒</div>
    <h4 class="mt-3">Join Torah Hub Premium</h4>
    <p class="text-muted">Enhance your daily Torah learning journey</p>
    <p class="price"><input type="hidden" name="plan" value="Premium"> $18<span class="text-muted">/month</span></p>
    
    <ul class="features">
          <li class="flex items-center"><span class="text-green-500">✔</span> Daily Torah Audio Lessons</li>
            <li class="flex items-center"><span class="text-green-500">✔</span> Exclusive Study Materials</li>
            <li class="flex items-center"><span class="text-green-500">✔</span> Direct Rabbi Q&A Access</li>
            <li class="flex items-center"><span class="text-green-500">✔</span> HD Video Classes</li>
    </ul>
    
    <p class="note">Join now and get your first week free. Cancel anytime.</p>
    
    <button class="btn btn-primary">Continue to Payment</button>

</form>
     
</div>

</body>
</html>
