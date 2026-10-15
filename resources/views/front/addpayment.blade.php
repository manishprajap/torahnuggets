<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Payment Method</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background-color: #808080;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        .payment-card {
            background: white;
            border-radius: 10px;
            padding: 25px;
            width: 400px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
            text-align: center;
        }
        .form-control {
            margin-bottom: 10px;
        }
        .input-group {
            display: flex;
            gap: 10px;
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
        .alert {
            font-size: 0.9em;
            display: flex;
            align-items: center;
            justify-content: center;
            gap: 5px;
        }
        .text-start {
            text-align: left !important;
        }
    </style>
</head>
<body>
    <div class="payment-card">
        <h4>Add Payment Method</h4>
        <p>Enter your payment details</p>
  
<form action="<?php echo url('process-payment')?>" method="post">
    @csrf
    <input type="hidden" name="id" value="{{ $id }}">
    
    <label class="text-start d-block"><strong>Card Number</strong></label>
    <input type="text" class="form-control" placeholder="1234 5678 9012 3456" name="card_number" required>

    <div class="row">
        <div class="col-6">
            <label class="text-start d-block"><strong>Expiry Date</strong></label>
            <input type="text" class="form-control" placeholder="MM/YY" name="expiry_date" required>
        </div>
        <div class="col-6">
            <label class="text-start d-block"><strong>CVV</strong></label>
            <input type="text" class="form-control" placeholder="123" name="cvv" required>
        </div>
    </div>

    <label class="text-start d-block mt-2"><strong>Billing Zip Code</strong></label>
    <input type="text" class="form-control" placeholder="12345" name="zip_code" required>

    <button type="submit" class="btn btn-primary">Start Free Trial</button>
</form>


        <a href="#" class="back-link">← Back</a>
        <p class="mt-2 text-muted" style="font-size: 0.8em;">
            Your subscription will begin after your free trial. Cancel anytime.
        </p>
    </div>
</body>
</html>
