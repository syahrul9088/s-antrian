<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Loket</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.11.2/css/all.min.css">
</head>
<body>
 
    <div class="container mt-5 mb-5 text-center">
        <h4>Antrian Menggunakan Codeigniter 4</h4>
    </div>
    <div class="container">
        <h4>Form Edit Loket</h4>
        <hr>
        <form action="<?php echo base_url('loket/update/'.$loket['loket_id']); ?>" method="post">
 
            <div class="form-group">
                <label for="">Nama Loket</label>
                <input type="text" name="loket_name" value="<?php echo $loket['loket_name']; ?>" class="form-control" placeholder="Nama Loket">
            </div>
               <div class="form-group">
                <label for="">Jenis Loket</label>
            <select name="loket_pelayanan_id" class="form-control" placeholder="Jenis Pelayanan">>
<?php 
                    foreach($pelayanan as $key => $data) { ?>
                        <option value="<?php echo $data['pelayanan_id']; ?>">
                        <?php echo $data['pelayanan_name']; ?> </option>
                    <?php } ?> </select>

            </div>
            <div class="form-group">
                <label for="">Keterangan Loket</label>
                <input type="text" name="loket_description" value="<?php echo $loket['loket_description']; ?>" class="form-control" placeholder="Nama description">
            </div>
            <div class="form-group">
                <button type="submit" class="btn btn-primary">Update</button>
            </div>
        </form>
    </div>
     
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</body>
</html> 