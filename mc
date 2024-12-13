<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Market Cap Calculator</title>
</head>
<body>
    <h1>Market Cap Calculator</h1>
    <label for="price">Token Price ($):</label>
    <input type="number" id="price" placeholder="Enter current price">
    <br><br>
    <label for="supply">Circulating Supply:</label>
    <input type="number" id="supply" placeholder="Enter circulating supply">
    <br><br>
    <button onclick="calculateMarketCap()">Calculate</button>
    <h2>Market Cap: <span id="result">$0</span></h2>

    <script>
        function calculateMarketCap() {
            const price = parseFloat(document.getElementById('price').value);
            const supply = parseFloat(document.getElementById('supply').value);

            if (!price || !supply || price < 0 || supply < 0) {
                alert("Please enter valid positive numbers for both fields.");
                return;
            }

            const marketCap = price * supply;
            document.getElementById('result').textContent = `$${marketCap.toLocaleString()}`;
        }
    </script>
</body>
</html>
