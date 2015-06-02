//
// Created by Andrew Hao
// Copyright (c) 2015 Andrew Hao. All rights reserved.
//

import Foundation

class RideHistoryPresenter: RideHistoryPresenterProtocol, RideHistoryInteractorOutputProtocol
{
    weak var view: RideHistoryViewProtocol?
    var interactor: RideHistoryInteractorInputProtocol?
    var wireFrame: RideHistoryWireFrameProtocol?
    
    init() {}
}