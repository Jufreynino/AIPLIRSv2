<?php

	require 'vendor/autoload.php';
	use vendor\PhpSpreadsheet\src\PhpSpreadsheet\Spreadsheet;
	use vendor\PhpSpreadsheet\src\PhpSpreadsheet\Writer\Xlsx;
	$spreadsheet = new Spreadsheet();
	$sheet = $spreadsheet->getActivateSheet();
	$sheet->setCellValue("A1", "FOO");
	$sheet->setCellValue("A2", "Bar");
	$writer = new Xlsx($spreadsheet);
	$writer->save("demo.xlsx");
	echo 'ok';

?>
