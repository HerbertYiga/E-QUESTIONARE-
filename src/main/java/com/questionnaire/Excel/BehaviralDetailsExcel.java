package com.questionnaire.Excel;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.poi.hssf.usermodel.HSSFFont;
import org.apache.poi.hssf.usermodel.HSSFRow;
import org.apache.poi.hssf.usermodel.HSSFSheet;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.hssf.util.HSSFColor;
import org.apache.poi.ss.usermodel.CellStyle;
import org.apache.poi.ss.usermodel.Font;
import org.apache.poi.ss.usermodel.Row;
import org.springframework.web.servlet.view.document.AbstractExcelView;

import com.questionnaire.bean.RespondentBean;

public class BehaviralDetailsExcel extends AbstractExcelView {

	@Override
	protected void buildExcelDocument(Map<String, Object> model, HSSFWorkbook workbook, HttpServletRequest request,
			HttpServletResponse reponse) throws Exception {

		List<RespondentBean> persondetails = (List<RespondentBean>) model.get("list");

		// creating a new Excel sheet
		HSSFSheet sheet = workbook.createSheet("RespondentBean");
		sheet.setDefaultColumnWidth(30);
		// styling the excel sheet

		Row header = sheet.createRow(0);
		header.createCell(0).setCellValue("Full Names");
		header.createCell(1).setCellValue("Number of Sexual  Partners");


		// creating data rows
		int rowCount = 1;
		for (RespondentBean pdetails : persondetails) {

			HSSFRow aRow = sheet.createRow(rowCount++);

			aRow.createCell(0).setCellValue(pdetails.getFullNames());
			aRow.createCell(1).setCellValue(pdetails.getSexualPartners());

		}

	}

}
