#' 回逾期款生成生成器界面
#'
#' @param colTitles  主页标题
#' @param widthRates 左右比例
#' @param func_left 左函数
#' @param func_right 右函数
#' @param tabTitle 标题
#' @param func_bottom  下面一栏
#'
#' @return 返回值
#' @import tsui
#' @export
#'
#' @examples
#' RefundOverduePaymentsUI()
RefundOverduePaymentsUI <- function(tabTitle ='回逾期款',
                          colTitles =c('操作区域','操作区域','显示区域'),
                          widthRates =c(6,6,12),
                          func_left = RefundOverduePaymentsUI_left,
                          func_right =RefundOverduePaymentsUI_right,
                          func_bottom = RefundOverduePaymentsUI_bottom
) {

  #三栏式设置，可以复制
  res = tsui::uiGen3(tabTitle = tabTitle,colTitles =colTitles,widthRates = widthRates,func_left = func_left,func_right = func_right,func_bottom = func_bottom )
  return(res)

}





#' 请输入文件
#'
#' @return 返回值
#' @export
#'
#' @examples
#' RefundOverduePaymentsUI_left()
RefundOverduePaymentsUI_left <- function() {


  res <- tagList(


    tsui::uiTemplate(templateName = '回逾期款模板'),
    tsui::mdl_file(id ='text_flie_RefundOverduePayments' ,label ='上传文件' ),
    tsui::mdl_date(id ='text_date_RefundOverduePayments_FDate','请输入会计所属期'),
    shiny::actionButton(inputId = 'btn_RefundOverduePayments_Up',label = '上传回逾期款数据'),

    shiny::actionButton(inputId = 'btn_RefundOverduePayments_view',label = '查询当前数据'),
    tsui::mdl_download_button(id = 'dl_RefundOverduePayments_new',label = '下载查询记录到EXCEL')







  )
  return(res)

}


#' 生成区域
#'
#' @return 返回值
#' @export
#'
#' @examples
#' RefundOverduePaymentsUI_bottom()
RefundOverduePaymentsUI_right <- function() {
  res <- tagList(
    tsui::mdl_date(id ='text_date_RefundOverduePayments_FDate_bak','请输入会计所属期'),
    shiny::actionButton(inputId = 'text_date_RefundOverduePayments_FDate_bak',label = '查询历史数据'),
    tsui::mdl_download_button(id = 'dl_RefundOverduePayments_bak',label = '下载查询记录到EXCEL')





  )
  return(res)

}


#' 生成区域
#'
#' @return 返回值
#' @export
#'
#' @examples
#' RefundOverduePaymentsUI_bottom()
RefundOverduePaymentsUI_bottom <- function() {
  res <- tagList(
    tsui::uiScrollX(tsui::mdl_dataTable(id = 'RefundOverduePayments_resultView',label ='结果显示' ))

  )
  return(res)

}
