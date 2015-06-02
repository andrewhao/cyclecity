//
// Created by Andrew Hao
// Copyright (c) 2015 Andrew Hao. All rights reserved.
//

import Foundation

class RideHistoryWireFrame: RideHistoryWireFrameProtocol
{
    class func presentRideHistoryModule(fromView view: AnyObject)
    {
        // Generating module components
        var view: RideHistoryViewProtocol = RideHistoryView()
        var presenter: protocol<RideHistoryPresenterProtocol, RideHistoryInteractorOutputProtocol> = RideHistoryPresenter()
        var interactor: RideHistoryInteractorInputProtocol = RideHistoryInteractor()
        var APIDataManager: RideHistoryAPIDataManagerInputProtocol = RideHistoryAPIDataManager()
        var localDataManager: RideHistoryLocalDataManagerInputProtocol = RideHistoryLocalDataManager()
        var wireFrame: RideHistoryWireFrameProtocol = RideHistoryWireFrame()
        
        // Connecting
        view.presenter = presenter
        presenter.view = view
        presenter.wireFrame = wireFrame
        presenter.interactor = interactor
        interactor.presenter = presenter
        interactor.APIDataManager = APIDataManager
        interactor.localDatamanager = localDataManager
    }
}