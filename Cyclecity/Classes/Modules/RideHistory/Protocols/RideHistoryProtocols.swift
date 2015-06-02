//
// Created by Andrew Hao
// Copyright (c) 2015 Andrew Hao. All rights reserved.
//

import Foundation

protocol RideHistoryViewProtocol: class
{
    var presenter: RideHistoryPresenterProtocol? { get set }
    /**
    * Add here your methods for communication PRESENTER -> VIEW
    */
}

protocol RideHistoryWireFrameProtocol: class
{
    class func presentRideHistoryModule(fromView view: AnyObject)
    /**
    * Add here your methods for communication PRESENTER -> WIREFRAME
    */
}

protocol RideHistoryPresenterProtocol: class
{
    var view: RideHistoryViewProtocol? { get set }
    var interactor: RideHistoryInteractorInputProtocol? { get set }
    var wireFrame: RideHistoryWireFrameProtocol? { get set }
    /**
    * Add here your methods for communication VIEW -> PRESENTER
    */
}

protocol RideHistoryInteractorOutputProtocol: class
{
    /**
    * Add here your methods for communication INTERACTOR -> PRESENTER
    */
}

protocol RideHistoryInteractorInputProtocol: class
{
    var presenter: RideHistoryInteractorOutputProtocol? { get set }
    var APIDataManager: RideHistoryAPIDataManagerInputProtocol? { get set }
    var localDatamanager: RideHistoryLocalDataManagerInputProtocol? { get set }
    /**
    * Add here your methods for communication PRESENTER -> INTERACTOR
    */
}

protocol RideHistoryDataManagerInputProtocol: class
{
    /**
    * Add here your methods for communication INTERACTOR -> DATAMANAGER
    */
}

protocol RideHistoryAPIDataManagerInputProtocol: class
{
    /**
    * Add here your methods for communication INTERACTOR -> APIDATAMANAGER
    */
}

protocol RideHistoryLocalDataManagerInputProtocol: class
{
    /**
    * Add here your methods for communication INTERACTOR -> LOCALDATAMANAGER
    */
}
