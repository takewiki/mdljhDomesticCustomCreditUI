#' 内贸客户信用生成生成器界面
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
#' DomesticCustomCreditUI()
DomesticCustomCreditUI <- function(tabTitle ='内贸客户信用',
                          colTitles =c('操作区域','操作区域','显示区域'),
                          widthRates =c(6,6,12),
                          func_left = DomesticCustomCreditUI_left,
                          func_right =DomesticCustomCreditUI_right,
                          func_bottom = DomesticCustomCreditUI_bottom
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
#' DomesticCustomCreditUI_left()
DomesticCustomCreditUI_left <- function() {


  res <- tagList(

    # tsui::mdl_date(id ='text_date_DomesticCustomCredit_MATUREDDEBIT_FDate_','输入债权表获取日期'),
    # shiny::actionButton(inputId = 'btn_DomesticCustomCredit_get',label = '获取到期债权表数据'),
    #
    #
    # tsui::mdl_date(id ='text_date_DomesticCustomCredit_MATUREDDEBIT_FDate_','输入收款获取日期'),
    # shiny::actionButton(inputId = 'btn_DomesticCustomCredit_Receiv_view',label = '获取收款数据')
    tsui::mdl_date(id ='text_date_DomesticCustomCredit_FDate','输入日期'),
    shiny::actionButton(inputId = 'btn_DomesticCustomCredit_Measure',label = '额度测算'),
    tsui::mdl_download_button(id = 'dl_DomesticCustomCredit',label = '下载到EXCEL')


  )
  return(res)

}


#' 生成区域
#'
#' @return 返回值
#' @export
#'
#' @examples
#' DomesticCustomCreditUI_bottom()
DomesticCustomCreditUI_right <- function() {
  res <- tagList(



  )
  return(res)

}


#' 生成区域
#'
#' @return 返回值
#' @export
#'
#' @examples
#' DomesticCustomCreditUI_bottom()
DomesticCustomCreditUI_bottom <- function() {
  res <- tagList(
    tsui::uiScrollX(tsui::mdl_dataTable(id = 'DomesticCustomCredit_resultView',label ='结果显示' ))

  )
  return(res)

}
