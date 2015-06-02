//
// Created by Andrew Hao
// Copyright (c) 2015 Andrew Hao. All rights reserved.
//

import Foundation

class RideHistoryInteractor: RideHistoryInteractorInputProtocol
{
    weak var presenter: RideHistoryInteractorOutputProtocol?
    var APIDataManager: RideHistoryAPIDataManagerInputProtocol?
    var localDatamanager: RideHistoryLocalDataManagerInputProtocol?
    
    init() {}
}