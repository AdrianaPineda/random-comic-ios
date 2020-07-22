// MARK: - Mocks generated from file: ComicRating/Modules/ComicHistory/Interactor/ComicHistoryInteractorOutput.swift at 2020-07-22 19:09:43 +0000

//
//  ComicHistoryComicHistoryInteractorOutput.swift
//  ComicRating
//
//  Created by Adriana Pineda on 12/05/2020.
//  Copyright © 2020 Adriana Pineda. All rights reserved.
//

@testable import ComicRating
import Cuckoo

import Foundation

class MockComicHistoryInteractorOutput: ComicHistoryInteractorOutput, Cuckoo.ProtocolMock {
    typealias MocksType = ComicHistoryInteractorOutput

    typealias Stubbing = __StubbingProxy_ComicHistoryInteractorOutput
    typealias Verification = __VerificationProxy_ComicHistoryInteractorOutput

    let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

    private var __defaultImplStub: ComicHistoryInteractorOutput?

    func enableDefaultImplementation(_ stub: ComicHistoryInteractorOutput) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }

    func comicsLoaded(comics: [Comic]) {
        return cuckoo_manager.call("comicsLoaded(comics: [Comic])",
                                   parameters: comics,
                                   escapingParameters: comics,
                                   superclassCall:

                                   Cuckoo.MockManager.crashOnProtocolSuperclassCall(),

                                   defaultCall: __defaultImplStub!.comicsLoaded(comics: comics))
    }

    func imageFetched(imageData: Data, id: Int) {
        return cuckoo_manager.call("imageFetched(imageData: Data, id: Int)",
                                   parameters: (imageData, id),
                                   escapingParameters: (imageData, id),
                                   superclassCall:

                                   Cuckoo.MockManager.crashOnProtocolSuperclassCall(),

                                   defaultCall: __defaultImplStub!.imageFetched(imageData: imageData, id: id))
    }

    func imageFetchFailed(id: Int) {
        return cuckoo_manager.call("imageFetchFailed(id: Int)",
                                   parameters: id,
                                   escapingParameters: id,
                                   superclassCall:

                                   Cuckoo.MockManager.crashOnProtocolSuperclassCall(),

                                   defaultCall: __defaultImplStub!.imageFetchFailed(id: id))
    }

    struct __StubbingProxy_ComicHistoryInteractorOutput: Cuckoo.StubbingProxy {
        private let cuckoo_manager: Cuckoo.MockManager

        init(manager: Cuckoo.MockManager) {
            cuckoo_manager = manager
        }

        func comicsLoaded<M1: Cuckoo.Matchable>(comics: M1) -> Cuckoo.ProtocolStubNoReturnFunction<[Comic]> where M1.MatchedType == [Comic] {
            let matchers: [Cuckoo.ParameterMatcher<[Comic]>] = [wrap(matchable: comics) { $0 }]
            return .init(stub: cuckoo_manager.createStub(for: MockComicHistoryInteractorOutput.self,
                                                         method: "comicsLoaded(comics: [Comic])",
                                                         parameterMatchers: matchers))
        }

        func imageFetched<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable>(imageData: M1, id: M2) -> Cuckoo.ProtocolStubNoReturnFunction<(Data,
                                                                                                                                    Int)> where M1.MatchedType == Data, M2.MatchedType == Int {
            let matchers: [Cuckoo.ParameterMatcher<(Data, Int)>] = [wrap(matchable: imageData) { $0.0 },
                                                                    wrap(matchable: id) { $0.1 }]
            return .init(stub: cuckoo_manager.createStub(for: MockComicHistoryInteractorOutput.self,
                                                         method: "imageFetched(imageData: Data, id: Int)",
                                                         parameterMatchers: matchers))
        }

        func imageFetchFailed<M1: Cuckoo.Matchable>(id: M1) -> Cuckoo.ProtocolStubNoReturnFunction<Int> where M1.MatchedType == Int {
            let matchers: [Cuckoo.ParameterMatcher<Int>] = [wrap(matchable: id) { $0 }]
            return .init(stub: cuckoo_manager.createStub(for: MockComicHistoryInteractorOutput.self,
                                                         method: "imageFetchFailed(id: Int)",
                                                         parameterMatchers: matchers))
        }
    }

    struct __VerificationProxy_ComicHistoryInteractorOutput: Cuckoo.VerificationProxy {
        private let cuckoo_manager: Cuckoo.MockManager
        private let callMatcher: Cuckoo.CallMatcher
        private let sourceLocation: Cuckoo.SourceLocation

        init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
            cuckoo_manager = manager
            self.callMatcher = callMatcher
            self.sourceLocation = sourceLocation
        }

        @discardableResult
        func comicsLoaded<M1: Cuckoo.Matchable>(comics: M1) -> Cuckoo.__DoNotUse<[Comic], Void> where M1.MatchedType == [Comic] {
            let matchers: [Cuckoo.ParameterMatcher<[Comic]>] = [wrap(matchable: comics) { $0 }]
            return cuckoo_manager.verify("comicsLoaded(comics: [Comic])", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
        }

        @discardableResult
        func imageFetched<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable>(imageData: M1, id: M2) -> Cuckoo.__DoNotUse<(Data,
                                                                                                                  Int), Void> where M1.MatchedType == Data, M2.MatchedType == Int {
            let matchers: [Cuckoo.ParameterMatcher<(Data, Int)>] = [wrap(matchable: imageData) { $0.0 },
                                                                    wrap(matchable: id) { $0.1 }]
            return cuckoo_manager.verify("imageFetched(imageData: Data, id: Int)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
        }

        @discardableResult
        func imageFetchFailed<M1: Cuckoo.Matchable>(id: M1) -> Cuckoo.__DoNotUse<Int, Void> where M1.MatchedType == Int {
            let matchers: [Cuckoo.ParameterMatcher<Int>] = [wrap(matchable: id) { $0 }]
            return cuckoo_manager.verify("imageFetchFailed(id: Int)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
        }
    }
}

class ComicHistoryInteractorOutputStub: ComicHistoryInteractorOutput {
    func comicsLoaded(comics _: [Comic]) {
        return DefaultValueRegistry.defaultValue(for: Void.self)
    }

    func imageFetched(imageData _: Data, id _: Int) {
        return DefaultValueRegistry.defaultValue(for: Void.self)
    }

    func imageFetchFailed(id _: Int) {
        return DefaultValueRegistry.defaultValue(for: Void.self)
    }
}

// MARK: - Mocks generated from file: ComicRating/Services/Api/ComicApiService.swift at 2020-07-22 19:09:43 +0000

//
//  ComicApiService.swift
//  ComicRating
//
//  Created by Adriana Pineda on 22/03/2020.
//  Copyright © 2020 Adriana Pineda. All rights reserved.
//

@testable import ComicRating
import Cuckoo

import PromiseKit
import UIKit

class MockComicApiService: ComicApiService, Cuckoo.ClassMock {
    typealias MocksType = ComicApiService

    typealias Stubbing = __StubbingProxy_ComicApiService
    typealias Verification = __VerificationProxy_ComicApiService

    let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: true)

    private var __defaultImplStub: ComicApiService?

    func enableDefaultImplementation(_ stub: ComicApiService) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }

    override var baseUrl: String {
        get {
            return cuckoo_manager.getter("baseUrl",
                                         superclassCall:

                                         super.baseUrl,

                                         defaultCall: __defaultImplStub!.baseUrl)
        }

        set {
            cuckoo_manager.setter("baseUrl",
                                  value: newValue,
                                  superclassCall:

                                  super.baseUrl = newValue,

                                  defaultCall: __defaultImplStub!.baseUrl = newValue)
        }
    }

    override var httpService: HttpServiceInterface {
        get {
            return cuckoo_manager.getter("httpService",
                                         superclassCall:

                                         super.httpService,

                                         defaultCall: __defaultImplStub!.httpService)
        }

        set {
            cuckoo_manager.setter("httpService",
                                  value: newValue,
                                  superclassCall:

                                  super.httpService = newValue,

                                  defaultCall: __defaultImplStub!.httpService = newValue)
        }
    }

    override func getComic(id: Int, completion: @escaping ((Comic?) -> Void)) {
        return cuckoo_manager.call("getComic(id: Int, completion: @escaping ((Comic?) -> Void))",
                                   parameters: (id, completion),
                                   escapingParameters: (id, completion),
                                   superclassCall:

                                   super.getComic(id: id, completion: completion),

                                   defaultCall: __defaultImplStub!.getComic(id: id, completion: completion))
    }

    override func getLastComic(completion: @escaping ((Comic?) -> Void)) {
        return cuckoo_manager.call("getLastComic(completion: @escaping ((Comic?) -> Void))",
                                   parameters: completion,
                                   escapingParameters: completion,
                                   superclassCall:

                                   super.getLastComic(completion: completion),

                                   defaultCall: __defaultImplStub!.getLastComic(completion: completion))
    }

    override func getComic(id: Int) -> Promise<Comic> {
        return cuckoo_manager.call("getComic(id: Int) -> Promise<Comic>",
                                   parameters: id,
                                   escapingParameters: id,
                                   superclassCall:

                                   super.getComic(id: id),

                                   defaultCall: __defaultImplStub!.getComic(id: id))
    }

    override func getLastComic() -> Promise<Comic> {
        return cuckoo_manager.call("getLastComic() -> Promise<Comic>",
                                   parameters: (),
                                   escapingParameters: (),
                                   superclassCall:

                                   super.getLastComic(),

                                   defaultCall: __defaultImplStub!.getLastComic())
    }

    struct __StubbingProxy_ComicApiService: Cuckoo.StubbingProxy {
        private let cuckoo_manager: Cuckoo.MockManager

        init(manager: Cuckoo.MockManager) {
            cuckoo_manager = manager
        }

        var baseUrl: Cuckoo.ClassToBeStubbedProperty<MockComicApiService, String> {
            return .init(manager: cuckoo_manager, name: "baseUrl")
        }

        var httpService: Cuckoo.ClassToBeStubbedProperty<MockComicApiService, HttpServiceInterface> {
            return .init(manager: cuckoo_manager, name: "httpService")
        }

        func getComic<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable>(id: M1, completion: M2) -> Cuckoo.ClassStubNoReturnFunction<(Int,
                                                                                                                              (Comic?) -> Void)> where M1.MatchedType == Int, M2.MatchedType == ((Comic?) -> Void) {
            let matchers: [Cuckoo.ParameterMatcher<(Int, (Comic?) -> Void)>] = [wrap(matchable: id) { $0.0 },
                                                                                wrap(matchable: completion) { $0.1 }]
            return .init(stub: cuckoo_manager.createStub(for: MockComicApiService.self,
                                                         method: "getComic(id: Int, completion: @escaping ((Comic?) -> Void))",
                                                         parameterMatchers: matchers))
        }

        func getLastComic<M1: Cuckoo.Matchable>(completion: M1) -> Cuckoo.ClassStubNoReturnFunction<(Comic?) -> Void> where M1.MatchedType == ((Comic?) -> Void) {
            let matchers: [Cuckoo.ParameterMatcher<(Comic?) -> Void>] = [wrap(matchable: completion) { $0 }]
            return .init(stub: cuckoo_manager.createStub(for: MockComicApiService.self,
                                                         method: "getLastComic(completion: @escaping ((Comic?) -> Void))",
                                                         parameterMatchers: matchers))
        }

        func getComic<M1: Cuckoo.Matchable>(id: M1) -> Cuckoo.ClassStubFunction<Int, Promise<Comic>> where M1.MatchedType == Int {
            let matchers: [Cuckoo.ParameterMatcher<Int>] = [wrap(matchable: id) { $0 }]
            return .init(stub: cuckoo_manager.createStub(for: MockComicApiService.self,
                                                         method: "getComic(id: Int) -> Promise<Comic>",
                                                         parameterMatchers: matchers))
        }

        func getLastComic() -> Cuckoo.ClassStubFunction<Void, Promise<Comic>> {
            let matchers: [Cuckoo.ParameterMatcher<Void>] = []
            return .init(stub: cuckoo_manager.createStub(for: MockComicApiService.self,
                                                         method: "getLastComic() -> Promise<Comic>",
                                                         parameterMatchers: matchers))
        }
    }

    struct __VerificationProxy_ComicApiService: Cuckoo.VerificationProxy {
        private let cuckoo_manager: Cuckoo.MockManager
        private let callMatcher: Cuckoo.CallMatcher
        private let sourceLocation: Cuckoo.SourceLocation

        init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
            cuckoo_manager = manager
            self.callMatcher = callMatcher
            self.sourceLocation = sourceLocation
        }

        var baseUrl: Cuckoo.VerifyProperty<String> {
            return .init(manager: cuckoo_manager, name: "baseUrl", callMatcher: callMatcher,
                         sourceLocation: sourceLocation)
        }

        var httpService: Cuckoo.VerifyProperty<HttpServiceInterface> {
            return .init(manager: cuckoo_manager, name: "httpService", callMatcher: callMatcher,
                         sourceLocation: sourceLocation)
        }

        @discardableResult
        func getComic<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable>(id: M1, completion: M2) -> Cuckoo.__DoNotUse<(Int,
                                                                                                               (Comic?) -> Void), Void> where M1.MatchedType == Int, M2.MatchedType == ((Comic?) -> Void) {
            let matchers: [Cuckoo.ParameterMatcher<(Int, (Comic?) -> Void)>] = [wrap(matchable: id) { $0.0 },
                                                                                wrap(matchable: completion) { $0.1 }]
            return cuckoo_manager.verify("getComic(id: Int, completion: @escaping ((Comic?) -> Void))", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
        }

        @discardableResult
        func getLastComic<M1: Cuckoo.Matchable>(completion: M1) -> Cuckoo.__DoNotUse<(Comic?) -> Void, Void> where M1.MatchedType == ((Comic?) -> Void) {
            let matchers: [Cuckoo.ParameterMatcher<(Comic?) -> Void>] = [wrap(matchable: completion) { $0 }]
            return cuckoo_manager.verify("getLastComic(completion: @escaping ((Comic?) -> Void))", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
        }

        @discardableResult
        func getComic<M1: Cuckoo.Matchable>(id: M1) -> Cuckoo.__DoNotUse<Int, Promise<Comic>> where M1.MatchedType == Int {
            let matchers: [Cuckoo.ParameterMatcher<Int>] = [wrap(matchable: id) { $0 }]
            return cuckoo_manager.verify("getComic(id: Int) -> Promise<Comic>", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
        }

        @discardableResult
        func getLastComic() -> Cuckoo.__DoNotUse<Void, Promise<Comic>> {
            let matchers: [Cuckoo.ParameterMatcher<Void>] = []
            return cuckoo_manager.verify("getLastComic() -> Promise<Comic>", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
        }
    }
}

class ComicApiServiceStub: ComicApiService {
    override var baseUrl: String {
        get {
            return DefaultValueRegistry.defaultValue(for: String.self)
        }

        set {}
    }

    override var httpService: HttpServiceInterface {
        get {
            return DefaultValueRegistry.defaultValue(for: HttpServiceInterface.self)
        }

        set {}
    }

    override func getComic(id _: Int, completion _: @escaping ((Comic?) -> Void)) {
        return DefaultValueRegistry.defaultValue(for: Void.self)
    }

    override func getLastComic(completion _: @escaping ((Comic?) -> Void)) {
        return DefaultValueRegistry.defaultValue(for: Void.self)
    }

    override func getComic(id _: Int) -> Promise<Comic> {
        return DefaultValueRegistry.defaultValue(for: Promise<Comic>.self)
    }

    override func getLastComic() -> Promise<Comic> {
        return DefaultValueRegistry.defaultValue(for: Promise<Comic>.self)
    }
}

// MARK: - Mocks generated from file: ComicRating/Services/Api/ImageDownloaderService.swift at 2020-07-22 19:09:43 +0000

//
//  ImageDownloader.swift
//  ComicRating
//
//  Created by Adriana Pineda on 07/04/2020.
//  Copyright © 2020 Adriana Pineda. All rights reserved.
//

@testable import ComicRating
import Cuckoo

import Alamofire
import AlamofireImage
import Foundation
import PromiseKit

class MockImageDownloaderService: ImageDownloaderService, Cuckoo.ClassMock {
    typealias MocksType = ImageDownloaderService

    typealias Stubbing = __StubbingProxy_ImageDownloaderService
    typealias Verification = __VerificationProxy_ImageDownloaderService

    let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: true)

    private var __defaultImplStub: ImageDownloaderService?

    func enableDefaultImplementation(_ stub: ImageDownloaderService) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }

    override func fetchImage(fromUrl url: URL) -> Promise<Data> {
        return cuckoo_manager.call("fetchImage(fromUrl: URL) -> Promise<Data>",
                                   parameters: url,
                                   escapingParameters: url,
                                   superclassCall:

                                   super.fetchImage(fromUrl: url),

                                   defaultCall: __defaultImplStub!.fetchImage(fromUrl: url))
    }

    struct __StubbingProxy_ImageDownloaderService: Cuckoo.StubbingProxy {
        private let cuckoo_manager: Cuckoo.MockManager

        init(manager: Cuckoo.MockManager) {
            cuckoo_manager = manager
        }

        func fetchImage<M1: Cuckoo.Matchable>(fromUrl url: M1) -> Cuckoo.ClassStubFunction<URL, Promise<Data>> where M1.MatchedType == URL {
            let matchers: [Cuckoo.ParameterMatcher<URL>] = [wrap(matchable: url) { $0 }]
            return .init(stub: cuckoo_manager.createStub(for: MockImageDownloaderService.self,
                                                         method: "fetchImage(fromUrl: URL) -> Promise<Data>",
                                                         parameterMatchers: matchers))
        }
    }

    struct __VerificationProxy_ImageDownloaderService: Cuckoo.VerificationProxy {
        private let cuckoo_manager: Cuckoo.MockManager
        private let callMatcher: Cuckoo.CallMatcher
        private let sourceLocation: Cuckoo.SourceLocation

        init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
            cuckoo_manager = manager
            self.callMatcher = callMatcher
            self.sourceLocation = sourceLocation
        }

        @discardableResult
        func fetchImage<M1: Cuckoo.Matchable>(fromUrl url: M1) -> Cuckoo.__DoNotUse<URL, Promise<Data>> where M1.MatchedType == URL {
            let matchers: [Cuckoo.ParameterMatcher<URL>] = [wrap(matchable: url) { $0 }]
            return cuckoo_manager.verify("fetchImage(fromUrl: URL) -> Promise<Data>", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
        }
    }
}

class ImageDownloaderServiceStub: ImageDownloaderService {
    override func fetchImage(fromUrl _: URL) -> Promise<Data> {
        return DefaultValueRegistry.defaultValue(for: Promise<Data>.self)
    }
}

// MARK: - Mocks generated from file: ComicRating/Services/Storage/ComicStorageService.swift at 2020-07-22 19:09:43 +0000

//
//  ComicStorageService.swift
//  ComicRating
//
//  Created by Adriana Pineda on 16/04/2020.
//  Copyright © 2020 Adriana Pineda. All rights reserved.
//

@testable import ComicRating
import Cuckoo

import CoreData
import Foundation
import UIKit

class MockComicStorageService: ComicStorageService, Cuckoo.ClassMock {
    typealias MocksType = ComicStorageService

    typealias Stubbing = __StubbingProxy_ComicStorageService
    typealias Verification = __VerificationProxy_ComicStorageService

    let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: true)

    private var __defaultImplStub: ComicStorageService?

    func enableDefaultImplementation(_ stub: ComicStorageService) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }

    override func upsertComic(comic: Comic) {
        return cuckoo_manager.call("upsertComic(comic: Comic)",
                                   parameters: comic,
                                   escapingParameters: comic,
                                   superclassCall:

                                   super.upsertComic(comic: comic),

                                   defaultCall: __defaultImplStub!.upsertComic(comic: comic))
    }

    override func getComics() -> [Comic] {
        return cuckoo_manager.call("getComics() -> [Comic]",
                                   parameters: (),
                                   escapingParameters: (),
                                   superclassCall:

                                   super.getComics(),

                                   defaultCall: __defaultImplStub!.getComics())
    }

    struct __StubbingProxy_ComicStorageService: Cuckoo.StubbingProxy {
        private let cuckoo_manager: Cuckoo.MockManager

        init(manager: Cuckoo.MockManager) {
            cuckoo_manager = manager
        }

        func upsertComic<M1: Cuckoo.Matchable>(comic: M1) -> Cuckoo.ClassStubNoReturnFunction<Comic> where M1.MatchedType == Comic {
            let matchers: [Cuckoo.ParameterMatcher<Comic>] = [wrap(matchable: comic) { $0 }]
            return .init(stub: cuckoo_manager.createStub(for: MockComicStorageService.self,
                                                         method: "upsertComic(comic: Comic)",
                                                         parameterMatchers: matchers))
        }

        func getComics() -> Cuckoo.ClassStubFunction<Void, [Comic]> {
            let matchers: [Cuckoo.ParameterMatcher<Void>] = []
            return .init(stub: cuckoo_manager.createStub(for: MockComicStorageService.self,
                                                         method: "getComics() -> [Comic]", parameterMatchers: matchers))
        }
    }

    struct __VerificationProxy_ComicStorageService: Cuckoo.VerificationProxy {
        private let cuckoo_manager: Cuckoo.MockManager
        private let callMatcher: Cuckoo.CallMatcher
        private let sourceLocation: Cuckoo.SourceLocation

        init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
            cuckoo_manager = manager
            self.callMatcher = callMatcher
            self.sourceLocation = sourceLocation
        }

        @discardableResult
        func upsertComic<M1: Cuckoo.Matchable>(comic: M1) -> Cuckoo.__DoNotUse<Comic, Void> where M1.MatchedType == Comic {
            let matchers: [Cuckoo.ParameterMatcher<Comic>] = [wrap(matchable: comic) { $0 }]
            return cuckoo_manager.verify("upsertComic(comic: Comic)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
        }

        @discardableResult
        func getComics() -> Cuckoo.__DoNotUse<Void, [Comic]> {
            let matchers: [Cuckoo.ParameterMatcher<Void>] = []
            return cuckoo_manager.verify("getComics() -> [Comic]", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
        }
    }
}

class ComicStorageServiceStub: ComicStorageService {
    override func upsertComic(comic _: Comic) {
        return DefaultValueRegistry.defaultValue(for: Void.self)
    }

    override func getComics() -> [Comic] {
        return DefaultValueRegistry.defaultValue(for: [Comic].self)
    }
}