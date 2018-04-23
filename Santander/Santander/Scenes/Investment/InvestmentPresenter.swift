//
//  InvestmentPresenter.swift
//  Santander
//
//  Created by Gabriel vieira on 4/22/18.
//  Copyright (c) 2018 Gabriel vieira. All rights reserved.
//
//  This file was generated by the Clean Swift Xcode Templates so
//  you can apply clean architecture to your iOS and Mac projects,
//  see http://clean-swift.com
//

import UIKit

protocol InvestmentPresentationLogic
{
  func presentFundDetail(response: Investment.FetchFund.Response)
}

class InvestmentPresenter: InvestmentPresentationLogic
{
  weak var viewController: InvestmentDisplayLogic?
  
  // MARK: Do something
  
  func presentFundDetail(response: Investment.FetchFund.Response)
  {
    guard let _screen  = response.fund.screen else { return }
    let profiabiltyList = self.createProfiabilityList(fund: response.fund)
    let viewModel = Investment.FetchFund.ViewModel(screen: _screen, profiabilityList: profiabiltyList)
    viewController?.displayFundDetail(viewModel: viewModel)
  }
    
    private func createProfiabilityList(fund: Fund) -> [Investment.FetchFund.ViewModel.ProfiabilityList]{
        
        let list = [
            Investment.FetchFund.ViewModel.ProfiabilityList(name: "No mês",
                                                            fund: self.formatToPercent(fund.screen?.moreInfo?.month?.fund),
                                                            cdi: self.formatToPercent(fund.screen?.moreInfo?.month?.cDI)),
            
            Investment.FetchFund.ViewModel.ProfiabilityList(name: "No Ano",
                                                            fund: self.formatToPercent(fund.screen?.moreInfo?.year?.fund),
                                                            cdi: self.formatToPercent(fund.screen?.moreInfo?.year?.cDI)),
            
            Investment.FetchFund.ViewModel.ProfiabilityList(name: "12 meses",
                                                            fund: self.formatToPercent(fund.screen?.moreInfo?.twelveMonths?.fund),
                                                            cdi: self.formatToPercent(fund.screen?.moreInfo?.twelveMonths?.cDI))
            
        ]
        return list
    }

    private func formatToPercent(_ num: Double?) -> String {
        
        var c:String = String(format:"%.1f", num ?? 0.0)
        let replaceDot = c.replacingOccurrences(of: ".", with: ",")
        return "\(replaceDot)%"
    }
}
