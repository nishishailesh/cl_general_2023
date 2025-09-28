<?php


function send_sample_to_center($link,$sample_id)
{
  $payload=[
   "hospitalId"=> "22234",
    "patientId"=> "20250053481",
    "patientName"=> "Rameshbhai K Dabhi",
    "ageYears"=> 40,
    "ageDays"=> 0,
    "gender"=> "M",
    "sampleLocation"=> "Male Medical Ward",
    "isIndoor"=> "Yes",
    "sampleId"=> "1808251648",
    "sampleDateTime"=> "2025-08-18T11:02:00",
    "sampleParameters"=> "QualityofSample=>Good^SampleMaterial:Blood|SampleCollectionDateTime:2025-08-18T09:22:00",
    "testId"=> 454,
    "testName"=> "CBC",
    "parameterId"=> 177,
    "parameterName"=> "Hb",
    "resultValue"=> "11",
    "unit"=> "mg/dL",
    "resultDateTime"=> "2025-08-18T09:22:00"
  ];

  //print_r( $payload);

  $payload_string = json_encode($payload);
  //echo ($payload_string);

  $ch = curl_init("https://techo.gujarat.gov.in/api/lmis/data");

  $dt=(new DateTime('now', new DateTimeZone('Asia/Kolkata')))->format('c');
  //$dt="2025-08-18T09:22:00";
  //echo "\n".$dt."\n";

  $headers = [
      'Content-Type: application/json',
      'x-client-date-time: ' . $dt
  ];


  //print_r($headers);

  curl_setopt_array($ch, [
      CURLOPT_RETURNTRANSFER => true,
      CURLOPT_POST => true,
      CURLOPT_HTTPHEADER => $headers,
      //CURLOPT_POSTFIELDS => json_encode($payload),
      CURLOPT_POSTFIELDS => $payload_string,
      CURLOPT_CONNECTTIMEOUT => 10,
      CURLOPT_TIMEOUT => 30,
  ]);

  curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, false);

  $response = curl_exec($ch);
  echo 'response===>'.$response;

  $info = curl_getinfo($ch);
  print_r($info);
  if ($info['http_code'] == 200) {
      echo "Success: $response";
  } else {
      echo "Error:---> " . curl_error($ch);
  }
  curl_close($ch);
}
?>
