<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Subscription Page</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background-color: #808080;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        .subscription-card {
            background: white;
            border-radius: 10px;
            padding: 25px;
            width: 400px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
            text-align: center;
        }
        .plan-details {
            background: #f0f7ff;
            padding: 15px;
            border-radius: 5px;
            text-align: left;
        }
        .price {
            float: right;
            font-weight: bold;
        }
        .free-week {
            color: green;
            font-size: 0.9em;
        }
        .form-control {
            margin-bottom: 10px;
        }
        .btn-primary {
            width: 100%;
            font-weight: bold;
        }
        .back-link {
            display: block;
            margin-top: 10px;
            text-decoration: none;
            color: gray;
        }
    </style>
</head>
<body>
    <div class="subscription-card">
        <h4>Complete Your Subscription</h4>
        <p>Start your free week of Torah Hub Premium</p>

        <div class="plan-details">
            <strong>Torah Hub Premium</strong>
            <span class="price">$18.00/month</span>
            <p>Monthly subscription</p>
            <span class="free-week">First week free</span>
        </div>

        <form action="<?php echo url('member-update')?>" method="post">
                        @csrf
            <label class="text-start d-block mt-3"><strong>Email</strong></label>
            <input type="hidden" class="form-control" name="id" value="{{$id}}" required>
            <input type="email" class="form-control" name="email" placeholder="your@email.com" required>

            <label class="text-start d-block mt-2"><strong>Full Name</strong></label>
            <input type="text" class="form-control" name="name" placeholder="Your Name" required>

            <div class="alert alert-light mt-3" role="alert">
                You won't be charged during your free week. Cancel anytime before 17/03/2025 to avoid being charged.
            </div>

            <button type="submit" class="btn btn-primary">Continue to Payment</button>
        </form>

        <a href="<?php echo url('subscription')?>" class="back-link">← Back to plan</a>
    </div>
</body>
</html>
