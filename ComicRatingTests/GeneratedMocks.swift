// MARK: - Mocks generated from file: ComicRating/Modules/ComicHistory/Configurator/ComicHistoryInitializer.swift at 2020-08-29 09:34:23 +0000

//
//  ComicHistoryComicHistoryInitializer.swift
//  ComicRating
//
//  Created by Adriana Pineda on 12/05/2020.
//  Copyright © 2020 Adriana Pineda. All rights reserved.
//

@testable import ComicRating
import Cuckoo

import UIKit

class MockComicHistoryModuleInitializer: ComicHistoryModuleInitializer, Cuckoo.ClassMock {
    typealias MocksType = ComicHistoryModuleInitializer

    typealias Stubbing = __StubbingProxy_ComicHistoryModuleInitializer
    typealias Verification = __VerificationProxy_ComicHistoryModuleInitializer

    let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: true)

    private var __defaultImplStub: ComicHistoryModuleInitializer?

    func enableDefaultImplementation(_ stub: ComicHistoryModuleInitializer) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }

    override var comicHistoryViewController: ComicHistoryViewController! {
        get {
            return cuckoo_manager.getter("comicHistoryViewController",
                                         superclassCall:

                                         super.comicHistoryViewController,

                                         defaultCall: __defaultImplStub!.comicHistoryViewController)
        }

        set {
            cuckoo_manager.setter("comicHistoryViewController",
                                  value: newValue,
                                  superclassCall:

                                  super.comicHistoryViewController = newValue,

                                  defaultCall: __defaultImplStub!.comicHistoryViewController = newValue)
        }
    }

    override func awakeFromNib() {
        return cuckoo_manager.call("awakeFromNib()",
                                   parameters: (),
                                   escapingParameters: (),
                                   superclassCall:

                                   super.awakeFromNib(),

                                   defaultCall: __defaultImplStub!.awakeFromNib())
    }

    struct __StubbingProxy_ComicHistoryModuleInitializer: Cuckoo.StubbingProxy {
        private let cuckoo_manager: Cuckoo.MockManager

        init(manager: Cuckoo.MockManager) {
            cuckoo_manager = manager
        }

        var comicHistoryViewController: Cuckoo.ClassToBeStubbedOptionalProperty<MockComicHistoryModuleInitializer,
                                                                                ComicHistoryViewController> {
            return .init(manager: cuckoo_manager, name: "comicHistoryViewController")
        }

        func awakeFromNib() -> Cuckoo.ClassStubNoReturnFunction<Void> {
            let matchers: [Cuckoo.ParameterMatcher<Void>] = []
            return .init(stub: cuckoo_manager.createStub(for: MockComicHistoryModuleInitializer.self,
                                                         method: "awakeFromNib()", parameterMatchers: matchers))
        }
    }

    struct __VerificationProxy_ComicHistoryModuleInitializer: Cuckoo.VerificationProxy {
        private let cuckoo_manager: Cuckoo.MockManager
        private let callMatcher: Cuckoo.CallMatcher
        private let sourceLocation: Cuckoo.SourceLocation

        init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
            cuckoo_manager = manager
            self.callMatcher = callMatcher
            self.sourceLocation = sourceLocation
        }

        var comicHistoryViewController: Cuckoo.VerifyOptionalProperty<ComicHistoryViewController> {
            return .init(manager: cuckoo_manager, name: "comicHistoryViewController", callMatcher: callMatcher,
                         sourceLocation: sourceLocation)
        }

        @discardableResult
        func awakeFromNib() -> Cuckoo.__DoNotUse<Void, Void> {
            let matchers: [Cuckoo.ParameterMatcher<Void>] = []
            return cuckoo_manager.verify("awakeFromNib()", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
        }
    }
}

class ComicHistoryModuleInitializerStub: ComicHistoryModuleInitializer {
    override var comicHistoryViewController: ComicHistoryViewController! {
        get {
            return DefaultValueRegistry.defaultValue(for: (ComicHistoryViewController?).self)
        }

        set {}
    }

    override func awakeFromNib() {
        return DefaultValueRegistry.defaultValue(for: Void.self)
    }
}

class MockComicHistoryModuleBuilder: ComicHistoryModuleBuilder, Cuckoo.ClassMock {
    typealias MocksType = ComicHistoryModuleBuilder

    typealias Stubbing = __StubbingProxy_ComicHistoryModuleBuilder
    typealias Verification = __VerificationProxy_ComicHistoryModuleBuilder

    let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: true)

    private var __defaultImplStub: ComicHistoryModuleBuilder?

    func enableDefaultImplementation(_ stub: ComicHistoryModuleBuilder) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }

    override func getViewController() -> ComicHistoryViewController? {
        return cuckoo_manager.call("getViewController() -> ComicHistoryViewController?",
                                   parameters: (),
                                   escapingParameters: (),
                                   superclassCall:

                                   super.getViewController(),

                                   defaultCall: __defaultImplStub!.getViewController())
    }

    struct __StubbingProxy_ComicHistoryModuleBuilder: Cuckoo.StubbingProxy {
        private let cuckoo_manager: Cuckoo.MockManager

        init(manager: Cuckoo.MockManager) {
            cuckoo_manager = manager
        }

        func getViewController() -> Cuckoo.ClassStubFunction<Void, ComicHistoryViewController?> {
            let matchers: [Cuckoo.ParameterMatcher<Void>] = []
            return .init(stub: cuckoo_manager.createStub(for: MockComicHistoryModuleBuilder.self,
                                                         method: "getViewController() -> ComicHistoryViewController?",
                                                         parameterMatchers: matchers))
        }
    }

    struct __VerificationProxy_ComicHistoryModuleBuilder: Cuckoo.VerificationProxy {
        private let cuckoo_manager: Cuckoo.MockManager
        private let callMatcher: Cuckoo.CallMatcher
        private let sourceLocation: Cuckoo.SourceLocation

        init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
            cuckoo_manager = manager
            self.callMatcher = callMatcher
            self.sourceLocation = sourceLocation
        }

        @discardableResult
        func getViewController() -> Cuckoo.__DoNotUse<Void, ComicHistoryViewController?> {
            let matchers: [Cuckoo.ParameterMatcher<Void>] = []
            return cuckoo_manager.verify("getViewController() -> ComicHistoryViewController?", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
        }
    }
}

class ComicHistoryModuleBuilderStub: ComicHistoryModuleBuilder {
    override func getViewController() -> ComicHistoryViewController? {
        return DefaultValueRegistry.defaultValue(for: (ComicHistoryViewController?).self)
    }
}

// MARK: - Mocks generated from file: ComicRating/Modules/ComicHistory/Interactor/ComicHistoryInteractorInput.swift at 2020-08-29 09:34:23 +0000

//
//  ComicHistoryComicHistoryInteractorInput.swift
//  ComicRating
//
//  Created by Adriana Pineda on 12/05/2020.
//  Copyright © 2020 Adriana Pineda. All rights reserved.
//

@testable import ComicRating
import Cuckoo

import Foundation

class MockComicHistoryInteractorInput: ComicHistoryInteractorInput, Cuckoo.ProtocolMock {
    typealias MocksType = ComicHistoryInteractorInput

    typealias Stubbing = __StubbingProxy_ComicHistoryInteractorInput
    typealias Verification = __VerificationProxy_ComicHistoryInteractorInput

    let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

    private var __defaultImplStub: ComicHistoryInteractorInput?

    func enableDefaultImplementation(_ stub: ComicHistoryInteractorInput) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }

    func getComics() {
        return cuckoo_manager.call("getComics()",
                                   parameters: (),
                                   escapingParameters: (),
                                   superclassCall:

                                   Cuckoo.MockManager.crashOnProtocolSuperclassCall(),

                                   defaultCall: __defaultImplStub!.getComics())
    }

    func fetchImage(fromUrl url: URL, id: Int) {
        return cuckoo_manager.call("fetchImage(fromUrl: URL, id: Int)",
                                   parameters: (url, id),
                                   escapingParameters: (url, id),
                                   superclassCall:

                                   Cuckoo.MockManager.crashOnProtocolSuperclassCall(),

                                   defaultCall: __defaultImplStub!.fetchImage(fromUrl: url, id: id))
    }

    struct __StubbingProxy_ComicHistoryInteractorInput: Cuckoo.StubbingProxy {
        private let cuckoo_manager: Cuckoo.MockManager

        init(manager: Cuckoo.MockManager) {
            cuckoo_manager = manager
        }

        func getComics() -> Cuckoo.ProtocolStubNoReturnFunction<Void> {
            let matchers: [Cuckoo.ParameterMatcher<Void>] = []
            return .init(stub: cuckoo_manager.createStub(for: MockComicHistoryInteractorInput.self,
                                                         method: "getComics()", parameterMatchers: matchers))
        }

        func fetchImage<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable>(fromUrl url: M1, id: M2) -> Cuckoo.ProtocolStubNoReturnFunction<(URL,
                                                                                                                                    Int)> where M1.MatchedType == URL, M2.MatchedType == Int {
            let matchers: [Cuckoo.ParameterMatcher<(URL, Int)>] = [
                wrap(matchable: url) { $0.0 },
                wrap(matchable: id) { $0.1 }
            ]
            return .init(stub: cuckoo_manager.createStub(for: MockComicHistoryInteractorInput.self,
                                                         method: "fetchImage(fromUrl: URL, id: Int)",
                                                         parameterMatchers: matchers))
        }
    }

    struct __VerificationProxy_ComicHistoryInteractorInput: Cuckoo.VerificationProxy {
        private let cuckoo_manager: Cuckoo.MockManager
        private let callMatcher: Cuckoo.CallMatcher
        private let sourceLocation: Cuckoo.SourceLocation

        init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
            cuckoo_manager = manager
            self.callMatcher = callMatcher
            self.sourceLocation = sourceLocation
        }

        @discardableResult
        func getComics() -> Cuckoo.__DoNotUse<Void, Void> {
            let matchers: [Cuckoo.ParameterMatcher<Void>] = []
            return cuckoo_manager.verify("getComics()", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
        }

        @discardableResult
        func fetchImage<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable>(fromUrl url: M1, id: M2) -> Cuckoo.__DoNotUse<(URL,
                                                                                                                  Int), Void> where M1.MatchedType == URL, M2.MatchedType == Int {
            let matchers: [Cuckoo.ParameterMatcher<(URL, Int)>] = [
                wrap(matchable: url) { $0.0 },
                wrap(matchable: id) { $0.1 }
            ]
            return cuckoo_manager.verify("fetchImage(fromUrl: URL, id: Int)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
        }
    }
}

class ComicHistoryInteractorInputStub: ComicHistoryInteractorInput {
    func getComics() {
        return DefaultValueRegistry.defaultValue(for: Void.self)
    }

    func fetchImage(fromUrl _: URL, id _: Int) {
        return DefaultValueRegistry.defaultValue(for: Void.self)
    }
}

// MARK: - Mocks generated from file: ComicRating/Modules/ComicHistory/Interactor/ComicHistoryInteractorOutput.swift at 2020-08-29 09:34:23 +0000

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

        func comicsLoaded<M1: Cuckoo.Matchable>(comics: M1) -> Cuckoo.ProtocolStubNoReturnFunction<[Comic]> where M1.MatchedType == [
            Comic
        ] {
            let matchers: [Cuckoo.ParameterMatcher<[Comic]>] = [wrap(matchable: comics) { $0 }]
            return .init(stub: cuckoo_manager.createStub(for: MockComicHistoryInteractorOutput.self,
                                                         method: "comicsLoaded(comics: [Comic])",
                                                         parameterMatchers: matchers))
        }

        func imageFetched<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable>(imageData: M1, id: M2) -> Cuckoo.ProtocolStubNoReturnFunction<(Data,
                                                                                                                                    Int)> where M1.MatchedType == Data, M2.MatchedType == Int {
            let matchers: [Cuckoo.ParameterMatcher<(Data, Int)>] = [
                wrap(matchable: imageData) { $0.0 },
                wrap(matchable: id) { $0.1 }
            ]
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
        func comicsLoaded<M1: Cuckoo.Matchable>(comics: M1) -> Cuckoo.__DoNotUse<[Comic], Void> where M1.MatchedType == [
            Comic
        ] {
            let matchers: [Cuckoo.ParameterMatcher<[Comic]>] = [wrap(matchable: comics) { $0 }]
            return cuckoo_manager.verify("comicsLoaded(comics: [Comic])", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
        }

        @discardableResult
        func imageFetched<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable>(imageData: M1, id: M2) -> Cuckoo.__DoNotUse<(Data,
                                                                                                                  Int), Void> where M1.MatchedType == Data, M2.MatchedType == Int {
            let matchers: [Cuckoo.ParameterMatcher<(Data, Int)>] = [
                wrap(matchable: imageData) { $0.0 },
                wrap(matchable: id) { $0.1 }
            ]
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

// MARK: - Mocks generated from file: ComicRating/Modules/ComicHistory/View/ComicHistoryViewController.swift at 2020-08-29 09:34:23 +0000

//
//  ComicHistoryViewController.swift
//  ComicRating
//
//  Created by Adriana Pineda on 12/05/2020.
//  Copyright © 2020 Adriana Pineda. All rights reserved.
//

@testable import ComicRating
import Cuckoo

import UIKit

class MockComicHistoryViewController: ComicHistoryViewController, Cuckoo.ClassMock {
    typealias MocksType = ComicHistoryViewController

    typealias Stubbing = __StubbingProxy_ComicHistoryViewController
    typealias Verification = __VerificationProxy_ComicHistoryViewController

    let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: true)

    private var __defaultImplStub: ComicHistoryViewController?

    func enableDefaultImplementation(_ stub: ComicHistoryViewController) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }

    override var output: ComicHistoryViewOutput! {
        get {
            return cuckoo_manager.getter("output",
                                         superclassCall:

                                         super.output,

                                         defaultCall: __defaultImplStub!.output)
        }

        set {
            cuckoo_manager.setter("output",
                                  value: newValue,
                                  superclassCall:

                                  super.output = newValue,

                                  defaultCall: __defaultImplStub!.output = newValue)
        }
    }

    override func viewDidLoad() {
        return cuckoo_manager.call("viewDidLoad()",
                                   parameters: (),
                                   escapingParameters: (),
                                   superclassCall:

                                   super.viewDidLoad(),

                                   defaultCall: __defaultImplStub!.viewDidLoad())
    }

    override func viewWillAppear(_ animated: Bool) {
        return cuckoo_manager.call("viewWillAppear(_: Bool)",
                                   parameters: animated,
                                   escapingParameters: animated,
                                   superclassCall:

                                   super.viewWillAppear(animated),

                                   defaultCall: __defaultImplStub!.viewWillAppear(animated))
    }

    override func viewWillTransition(to size: CGSize, with coordinator: UIViewControllerTransitionCoordinator) {
        return cuckoo_manager.call("viewWillTransition(to: CGSize, with: UIViewControllerTransitionCoordinator)",
                                   parameters: (size, coordinator),
                                   escapingParameters: (size, coordinator),
                                   superclassCall:

                                   super.viewWillTransition(to: size, with: coordinator),

                                   defaultCall: __defaultImplStub!.viewWillTransition(to: size, with: coordinator))
    }

    struct __StubbingProxy_ComicHistoryViewController: Cuckoo.StubbingProxy {
        private let cuckoo_manager: Cuckoo.MockManager

        init(manager: Cuckoo.MockManager) {
            cuckoo_manager = manager
        }

        var output: Cuckoo.ClassToBeStubbedOptionalProperty<MockComicHistoryViewController, ComicHistoryViewOutput> {
            return .init(manager: cuckoo_manager, name: "output")
        }

        func viewDidLoad() -> Cuckoo.ClassStubNoReturnFunction<Void> {
            let matchers: [Cuckoo.ParameterMatcher<Void>] = []
            return .init(stub: cuckoo_manager.createStub(for: MockComicHistoryViewController.self,
                                                         method: "viewDidLoad()", parameterMatchers: matchers))
        }

        func viewWillAppear<M1: Cuckoo.Matchable>(_ animated: M1) -> Cuckoo.ClassStubNoReturnFunction<Bool> where M1.MatchedType == Bool {
            let matchers: [Cuckoo.ParameterMatcher<Bool>] = [wrap(matchable: animated) { $0 }]
            return .init(stub: cuckoo_manager.createStub(for: MockComicHistoryViewController.self,
                                                         method: "viewWillAppear(_: Bool)",
                                                         parameterMatchers: matchers))
        }

        func viewWillTransition<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable>(to size: M1, with coordinator: M2) -> Cuckoo.ClassStubNoReturnFunction<(CGSize,
                                                                                                                                                   UIViewControllerTransitionCoordinator)> where M1.MatchedType == CGSize, M2.MatchedType == UIViewControllerTransitionCoordinator {
            let matchers: [Cuckoo.ParameterMatcher<(CGSize, UIViewControllerTransitionCoordinator)>] = [
                wrap(matchable: size) { $0.0 },
                wrap(matchable: coordinator) { $0.1 }
            ]
            return .init(stub: cuckoo_manager.createStub(for: MockComicHistoryViewController.self,
                                                         method: "viewWillTransition(to: CGSize, with: UIViewControllerTransitionCoordinator)",
                                                         parameterMatchers: matchers))
        }
    }

    struct __VerificationProxy_ComicHistoryViewController: Cuckoo.VerificationProxy {
        private let cuckoo_manager: Cuckoo.MockManager
        private let callMatcher: Cuckoo.CallMatcher
        private let sourceLocation: Cuckoo.SourceLocation

        init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
            cuckoo_manager = manager
            self.callMatcher = callMatcher
            self.sourceLocation = sourceLocation
        }

        var output: Cuckoo.VerifyOptionalProperty<ComicHistoryViewOutput> {
            return .init(manager: cuckoo_manager, name: "output", callMatcher: callMatcher,
                         sourceLocation: sourceLocation)
        }

        @discardableResult
        func viewDidLoad() -> Cuckoo.__DoNotUse<Void, Void> {
            let matchers: [Cuckoo.ParameterMatcher<Void>] = []
            return cuckoo_manager.verify("viewDidLoad()", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
        }

        @discardableResult
        func viewWillAppear<M1: Cuckoo.Matchable>(_ animated: M1) -> Cuckoo.__DoNotUse<Bool, Void> where M1.MatchedType == Bool {
            let matchers: [Cuckoo.ParameterMatcher<Bool>] = [wrap(matchable: animated) { $0 }]
            return cuckoo_manager.verify("viewWillAppear(_: Bool)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
        }

        @discardableResult
        func viewWillTransition<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable>(to size: M1, with coordinator: M2) -> Cuckoo.__DoNotUse<(CGSize,
                                                                                                                                    UIViewControllerTransitionCoordinator), Void> where M1.MatchedType == CGSize, M2.MatchedType == UIViewControllerTransitionCoordinator {
            let matchers: [Cuckoo.ParameterMatcher<(CGSize, UIViewControllerTransitionCoordinator)>] = [
                wrap(matchable: size) { $0.0 },
                wrap(matchable: coordinator) { $0.1 }
            ]
            return cuckoo_manager.verify("viewWillTransition(to: CGSize, with: UIViewControllerTransitionCoordinator)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
        }
    }
}

class ComicHistoryViewControllerStub: ComicHistoryViewController {
    override var output: ComicHistoryViewOutput! {
        get {
            return DefaultValueRegistry.defaultValue(for: (ComicHistoryViewOutput?).self)
        }

        set {}
    }

    override func viewDidLoad() {
        return DefaultValueRegistry.defaultValue(for: Void.self)
    }

    override func viewWillAppear(_: Bool) {
        return DefaultValueRegistry.defaultValue(for: Void.self)
    }

    override func viewWillTransition(to _: CGSize, with _: UIViewControllerTransitionCoordinator) {
        return DefaultValueRegistry.defaultValue(for: Void.self)
    }
}

// MARK: - Mocks generated from file: ComicRating/Modules/ComicHistory/View/ComicHistoryViewInput.swift at 2020-08-29 09:34:23 +0000

@testable import ComicRating
//
//  ComicHistoryComicHistoryViewInput.swift
//  ComicRating
//
//  Created by Adriana Pineda on 12/05/2020.
//  Copyright © 2020 Adriana Pineda. All rights reserved.
//
import Cuckoo

import Foundation

class MockComicHistoryViewInput: ComicHistoryViewInput, Cuckoo.ProtocolMock {
    typealias MocksType = ComicHistoryViewInput

    typealias Stubbing = __StubbingProxy_ComicHistoryViewInput
    typealias Verification = __VerificationProxy_ComicHistoryViewInput

    let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

    private var __defaultImplStub: ComicHistoryViewInput?

    func enableDefaultImplementation(_ stub: ComicHistoryViewInput) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }

    func setupInitialState() {
        return cuckoo_manager.call("setupInitialState()",
                                   parameters: (),
                                   escapingParameters: (),
                                   superclassCall:

                                   Cuckoo.MockManager.crashOnProtocolSuperclassCall(),

                                   defaultCall: __defaultImplStub!.setupInitialState())
    }

    func showComics(comics: [ComicForCell]) {
        return cuckoo_manager.call("showComics(comics: [ComicForCell])",
                                   parameters: comics,
                                   escapingParameters: comics,
                                   superclassCall:

                                   Cuckoo.MockManager.crashOnProtocolSuperclassCall(),

                                   defaultCall: __defaultImplStub!.showComics(comics: comics))
    }

    func showLoadingOnImages() {
        return cuckoo_manager.call("showLoadingOnImages()",
                                   parameters: (),
                                   escapingParameters: (),
                                   superclassCall:

                                   Cuckoo.MockManager.crashOnProtocolSuperclassCall(),

                                   defaultCall: __defaultImplStub!.showLoadingOnImages())
    }

    func showImageAtIndex(index: Int, image: ComicImage) {
        return cuckoo_manager.call("showImageAtIndex(index: Int, image: ComicImage)",
                                   parameters: (index, image),
                                   escapingParameters: (index, image),
                                   superclassCall:

                                   Cuckoo.MockManager.crashOnProtocolSuperclassCall(),

                                   defaultCall: __defaultImplStub!.showImageAtIndex(index: index, image: image))
    }

    struct __StubbingProxy_ComicHistoryViewInput: Cuckoo.StubbingProxy {
        private let cuckoo_manager: Cuckoo.MockManager

        init(manager: Cuckoo.MockManager) {
            cuckoo_manager = manager
        }

        func setupInitialState() -> Cuckoo.ProtocolStubNoReturnFunction<Void> {
            let matchers: [Cuckoo.ParameterMatcher<Void>] = []
            return .init(stub: cuckoo_manager.createStub(for: MockComicHistoryViewInput.self,
                                                         method: "setupInitialState()", parameterMatchers: matchers))
        }

        func showComics<M1: Cuckoo.Matchable>(comics: M1) -> Cuckoo.ProtocolStubNoReturnFunction<[ComicForCell]> where M1.MatchedType == [
            ComicForCell
        ] {
            let matchers: [Cuckoo.ParameterMatcher<[ComicForCell]>] = [wrap(matchable: comics) { $0 }]
            return .init(stub: cuckoo_manager.createStub(for: MockComicHistoryViewInput.self,
                                                         method: "showComics(comics: [ComicForCell])",
                                                         parameterMatchers: matchers))
        }

        func showLoadingOnImages() -> Cuckoo.ProtocolStubNoReturnFunction<Void> {
            let matchers: [Cuckoo.ParameterMatcher<Void>] = []
            return .init(stub: cuckoo_manager.createStub(for: MockComicHistoryViewInput.self,
                                                         method: "showLoadingOnImages()", parameterMatchers: matchers))
        }

        func showImageAtIndex<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable>(index: M1, image: M2) -> Cuckoo.ProtocolStubNoReturnFunction<(Int,
                                                                                                                                       ComicImage)> where M1.MatchedType == Int, M2.MatchedType == ComicImage {
            let matchers: [Cuckoo.ParameterMatcher<(Int, ComicImage)>] = [
                wrap(matchable: index) { $0.0 },
                wrap(matchable: image) { $0.1 }
            ]
            return .init(stub: cuckoo_manager.createStub(for: MockComicHistoryViewInput.self,
                                                         method: "showImageAtIndex(index: Int, image: ComicImage)",
                                                         parameterMatchers: matchers))
        }
    }

    struct __VerificationProxy_ComicHistoryViewInput: Cuckoo.VerificationProxy {
        private let cuckoo_manager: Cuckoo.MockManager
        private let callMatcher: Cuckoo.CallMatcher
        private let sourceLocation: Cuckoo.SourceLocation

        init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
            cuckoo_manager = manager
            self.callMatcher = callMatcher
            self.sourceLocation = sourceLocation
        }

        @discardableResult
        func setupInitialState() -> Cuckoo.__DoNotUse<Void, Void> {
            let matchers: [Cuckoo.ParameterMatcher<Void>] = []
            return cuckoo_manager.verify("setupInitialState()", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
        }

        @discardableResult
        func showComics<M1: Cuckoo.Matchable>(comics: M1) -> Cuckoo.__DoNotUse<[ComicForCell], Void> where M1.MatchedType == [
            ComicForCell
        ] {
            let matchers: [Cuckoo.ParameterMatcher<[ComicForCell]>] = [wrap(matchable: comics) { $0 }]
            return cuckoo_manager.verify("showComics(comics: [ComicForCell])", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
        }

        @discardableResult
        func showLoadingOnImages() -> Cuckoo.__DoNotUse<Void, Void> {
            let matchers: [Cuckoo.ParameterMatcher<Void>] = []
            return cuckoo_manager.verify("showLoadingOnImages()", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
        }

        @discardableResult
        func showImageAtIndex<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable>(index: M1, image: M2) -> Cuckoo.__DoNotUse<(Int,
                                                                                                                     ComicImage), Void> where M1.MatchedType == Int, M2.MatchedType == ComicImage {
            let matchers: [Cuckoo.ParameterMatcher<(Int, ComicImage)>] = [
                wrap(matchable: index) { $0.0 },
                wrap(matchable: image) { $0.1 }
            ]
            return cuckoo_manager.verify("showImageAtIndex(index: Int, image: ComicImage)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
        }
    }
}

class ComicHistoryViewInputStub: ComicHistoryViewInput {
    func setupInitialState() {
        return DefaultValueRegistry.defaultValue(for: Void.self)
    }

    func showComics(comics _: [ComicForCell]) {
        return DefaultValueRegistry.defaultValue(for: Void.self)
    }

    func showLoadingOnImages() {
        return DefaultValueRegistry.defaultValue(for: Void.self)
    }

    func showImageAtIndex(index _: Int, image _: ComicImage) {
        return DefaultValueRegistry.defaultValue(for: Void.self)
    }
}

// MARK: - Mocks generated from file: ComicRating/Modules/ComicHistory/View/ComicHistoryViewOutput.swift at 2020-08-29 09:34:23 +0000

//
//  ComicHistoryComicHistoryViewOutput.swift
//  ComicRating
//
//  Created by Adriana Pineda on 12/05/2020.
//  Copyright © 2020 Adriana Pineda. All rights reserved.
//

@testable import ComicRating
import Cuckoo

class MockComicHistoryViewOutput: ComicHistoryViewOutput, Cuckoo.ProtocolMock {
    typealias MocksType = ComicHistoryViewOutput

    typealias Stubbing = __StubbingProxy_ComicHistoryViewOutput
    typealias Verification = __VerificationProxy_ComicHistoryViewOutput

    let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

    private var __defaultImplStub: ComicHistoryViewOutput?

    func enableDefaultImplementation(_ stub: ComicHistoryViewOutput) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }

    func viewIsReady() {
        return cuckoo_manager.call("viewIsReady()",
                                   parameters: (),
                                   escapingParameters: (),
                                   superclassCall:

                                   Cuckoo.MockManager.crashOnProtocolSuperclassCall(),

                                   defaultCall: __defaultImplStub!.viewIsReady())
    }

    struct __StubbingProxy_ComicHistoryViewOutput: Cuckoo.StubbingProxy {
        private let cuckoo_manager: Cuckoo.MockManager

        init(manager: Cuckoo.MockManager) {
            cuckoo_manager = manager
        }

        func viewIsReady() -> Cuckoo.ProtocolStubNoReturnFunction<Void> {
            let matchers: [Cuckoo.ParameterMatcher<Void>] = []
            return .init(stub: cuckoo_manager.createStub(for: MockComicHistoryViewOutput.self, method: "viewIsReady()",
                                                         parameterMatchers: matchers))
        }
    }

    struct __VerificationProxy_ComicHistoryViewOutput: Cuckoo.VerificationProxy {
        private let cuckoo_manager: Cuckoo.MockManager
        private let callMatcher: Cuckoo.CallMatcher
        private let sourceLocation: Cuckoo.SourceLocation

        init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
            cuckoo_manager = manager
            self.callMatcher = callMatcher
            self.sourceLocation = sourceLocation
        }

        @discardableResult
        func viewIsReady() -> Cuckoo.__DoNotUse<Void, Void> {
            let matchers: [Cuckoo.ParameterMatcher<Void>] = []
            return cuckoo_manager.verify("viewIsReady()", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
        }
    }
}

class ComicHistoryViewOutputStub: ComicHistoryViewOutput {
    func viewIsReady() {
        return DefaultValueRegistry.defaultValue(for: Void.self)
    }
}

// MARK: - Mocks generated from file: ComicRating/Modules/ShowComic/Configurator/ShowComicInitializer.swift at 2020-08-29 09:34:23 +0000

//
//  ShowComicInitializer.swift
//  ComicRating
//
//  Created by Adriana Pineda on 18/05/2020.
//  Copyright © 2020 Adriana Pineda. All rights reserved.
//

@testable import ComicRating
import Cuckoo

import UIKit

class MockShowComicModuleInitializer: ShowComicModuleInitializer, Cuckoo.ClassMock {
    typealias MocksType = ShowComicModuleInitializer

    typealias Stubbing = __StubbingProxy_ShowComicModuleInitializer
    typealias Verification = __VerificationProxy_ShowComicModuleInitializer

    let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: true)

    private var __defaultImplStub: ShowComicModuleInitializer?

    func enableDefaultImplementation(_ stub: ShowComicModuleInitializer) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }

    override var showComicViewController: ShowComicViewController! {
        get {
            return cuckoo_manager.getter("showComicViewController",
                                         superclassCall:

                                         super.showComicViewController,

                                         defaultCall: __defaultImplStub!.showComicViewController)
        }

        set {
            cuckoo_manager.setter("showComicViewController",
                                  value: newValue,
                                  superclassCall:

                                  super.showComicViewController = newValue,

                                  defaultCall: __defaultImplStub!.showComicViewController = newValue)
        }
    }

    override func awakeFromNib() {
        return cuckoo_manager.call("awakeFromNib()",
                                   parameters: (),
                                   escapingParameters: (),
                                   superclassCall:

                                   super.awakeFromNib(),

                                   defaultCall: __defaultImplStub!.awakeFromNib())
    }

    struct __StubbingProxy_ShowComicModuleInitializer: Cuckoo.StubbingProxy {
        private let cuckoo_manager: Cuckoo.MockManager

        init(manager: Cuckoo.MockManager) {
            cuckoo_manager = manager
        }

        var showComicViewController: Cuckoo.ClassToBeStubbedOptionalProperty<MockShowComicModuleInitializer,
                                                                             ShowComicViewController> {
            return .init(manager: cuckoo_manager, name: "showComicViewController")
        }

        func awakeFromNib() -> Cuckoo.ClassStubNoReturnFunction<Void> {
            let matchers: [Cuckoo.ParameterMatcher<Void>] = []
            return .init(stub: cuckoo_manager.createStub(for: MockShowComicModuleInitializer.self,
                                                         method: "awakeFromNib()", parameterMatchers: matchers))
        }
    }

    struct __VerificationProxy_ShowComicModuleInitializer: Cuckoo.VerificationProxy {
        private let cuckoo_manager: Cuckoo.MockManager
        private let callMatcher: Cuckoo.CallMatcher
        private let sourceLocation: Cuckoo.SourceLocation

        init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
            cuckoo_manager = manager
            self.callMatcher = callMatcher
            self.sourceLocation = sourceLocation
        }

        var showComicViewController: Cuckoo.VerifyOptionalProperty<ShowComicViewController> {
            return .init(manager: cuckoo_manager, name: "showComicViewController", callMatcher: callMatcher,
                         sourceLocation: sourceLocation)
        }

        @discardableResult
        func awakeFromNib() -> Cuckoo.__DoNotUse<Void, Void> {
            let matchers: [Cuckoo.ParameterMatcher<Void>] = []
            return cuckoo_manager.verify("awakeFromNib()", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
        }
    }
}

class ShowComicModuleInitializerStub: ShowComicModuleInitializer {
    override var showComicViewController: ShowComicViewController! {
        get {
            return DefaultValueRegistry.defaultValue(for: (ShowComicViewController?).self)
        }

        set {}
    }

    override func awakeFromNib() {
        return DefaultValueRegistry.defaultValue(for: Void.self)
    }
}

class MockShowComicModuleBuilder: ShowComicModuleBuilder, Cuckoo.ClassMock {
    typealias MocksType = ShowComicModuleBuilder

    typealias Stubbing = __StubbingProxy_ShowComicModuleBuilder
    typealias Verification = __VerificationProxy_ShowComicModuleBuilder

    let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: true)

    private var __defaultImplStub: ShowComicModuleBuilder?

    func enableDefaultImplementation(_ stub: ShowComicModuleBuilder) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }

    override func getViewController() -> ShowComicViewController? {
        return cuckoo_manager.call("getViewController() -> ShowComicViewController?",
                                   parameters: (),
                                   escapingParameters: (),
                                   superclassCall:

                                   super.getViewController(),

                                   defaultCall: __defaultImplStub!.getViewController())
    }

    struct __StubbingProxy_ShowComicModuleBuilder: Cuckoo.StubbingProxy {
        private let cuckoo_manager: Cuckoo.MockManager

        init(manager: Cuckoo.MockManager) {
            cuckoo_manager = manager
        }

        func getViewController() -> Cuckoo.ClassStubFunction<Void, ShowComicViewController?> {
            let matchers: [Cuckoo.ParameterMatcher<Void>] = []
            return .init(stub: cuckoo_manager.createStub(for: MockShowComicModuleBuilder.self,
                                                         method: "getViewController() -> ShowComicViewController?",
                                                         parameterMatchers: matchers))
        }
    }

    struct __VerificationProxy_ShowComicModuleBuilder: Cuckoo.VerificationProxy {
        private let cuckoo_manager: Cuckoo.MockManager
        private let callMatcher: Cuckoo.CallMatcher
        private let sourceLocation: Cuckoo.SourceLocation

        init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
            cuckoo_manager = manager
            self.callMatcher = callMatcher
            self.sourceLocation = sourceLocation
        }

        @discardableResult
        func getViewController() -> Cuckoo.__DoNotUse<Void, ShowComicViewController?> {
            let matchers: [Cuckoo.ParameterMatcher<Void>] = []
            return cuckoo_manager.verify("getViewController() -> ShowComicViewController?", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
        }
    }
}

class ShowComicModuleBuilderStub: ShowComicModuleBuilder {
    override func getViewController() -> ShowComicViewController? {
        return DefaultValueRegistry.defaultValue(for: (ShowComicViewController?).self)
    }
}

// MARK: - Mocks generated from file: ComicRating/Modules/ShowComic/Interactor/ShowComicInteractorInput.swift at 2020-08-29 09:34:23 +0000

//
//  ShowComicShowComicInteractorInput.swift
//  ComicRating
//
//  Created by Adriana Pineda on 17/02/2020.
//  Copyright © 2020 Adriana Pineda. All rights reserved.
//

@testable import ComicRating
import Cuckoo

import Foundation

class MockShowComicInteractorInput: ShowComicInteractorInput, Cuckoo.ProtocolMock {
    typealias MocksType = ShowComicInteractorInput

    typealias Stubbing = __StubbingProxy_ShowComicInteractorInput
    typealias Verification = __VerificationProxy_ShowComicInteractorInput

    let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

    private var __defaultImplStub: ShowComicInteractorInput?

    func enableDefaultImplementation(_ stub: ShowComicInteractorInput) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }

    func fetchComic() {
        return cuckoo_manager.call("fetchComic()",
                                   parameters: (),
                                   escapingParameters: (),
                                   superclassCall:

                                   Cuckoo.MockManager.crashOnProtocolSuperclassCall(),

                                   defaultCall: __defaultImplStub!.fetchComic())
    }

    func fetchImage(fromUrl url: URL) {
        return cuckoo_manager.call("fetchImage(fromUrl: URL)",
                                   parameters: url,
                                   escapingParameters: url,
                                   superclassCall:

                                   Cuckoo.MockManager.crashOnProtocolSuperclassCall(),

                                   defaultCall: __defaultImplStub!.fetchImage(fromUrl: url))
    }

    func comicRated(_ rating: UInt8) {
        return cuckoo_manager.call("comicRated(_: UInt8)",
                                   parameters: rating,
                                   escapingParameters: rating,
                                   superclassCall:

                                   Cuckoo.MockManager.crashOnProtocolSuperclassCall(),

                                   defaultCall: __defaultImplStub!.comicRated(rating))
    }

    struct __StubbingProxy_ShowComicInteractorInput: Cuckoo.StubbingProxy {
        private let cuckoo_manager: Cuckoo.MockManager

        init(manager: Cuckoo.MockManager) {
            cuckoo_manager = manager
        }

        func fetchComic() -> Cuckoo.ProtocolStubNoReturnFunction<Void> {
            let matchers: [Cuckoo.ParameterMatcher<Void>] = []
            return .init(stub: cuckoo_manager.createStub(for: MockShowComicInteractorInput.self, method: "fetchComic()",
                                                         parameterMatchers: matchers))
        }

        func fetchImage<M1: Cuckoo.Matchable>(fromUrl url: M1) -> Cuckoo.ProtocolStubNoReturnFunction<URL> where M1.MatchedType == URL {
            let matchers: [Cuckoo.ParameterMatcher<URL>] = [wrap(matchable: url) { $0 }]
            return .init(stub: cuckoo_manager.createStub(for: MockShowComicInteractorInput.self,
                                                         method: "fetchImage(fromUrl: URL)",
                                                         parameterMatchers: matchers))
        }

        func comicRated<M1: Cuckoo.Matchable>(_ rating: M1) -> Cuckoo.ProtocolStubNoReturnFunction<UInt8> where M1.MatchedType == UInt8 {
            let matchers: [Cuckoo.ParameterMatcher<UInt8>] = [wrap(matchable: rating) { $0 }]
            return .init(stub: cuckoo_manager.createStub(for: MockShowComicInteractorInput.self,
                                                         method: "comicRated(_: UInt8)", parameterMatchers: matchers))
        }
    }

    struct __VerificationProxy_ShowComicInteractorInput: Cuckoo.VerificationProxy {
        private let cuckoo_manager: Cuckoo.MockManager
        private let callMatcher: Cuckoo.CallMatcher
        private let sourceLocation: Cuckoo.SourceLocation

        init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
            cuckoo_manager = manager
            self.callMatcher = callMatcher
            self.sourceLocation = sourceLocation
        }

        @discardableResult
        func fetchComic() -> Cuckoo.__DoNotUse<Void, Void> {
            let matchers: [Cuckoo.ParameterMatcher<Void>] = []
            return cuckoo_manager.verify("fetchComic()", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
        }

        @discardableResult
        func fetchImage<M1: Cuckoo.Matchable>(fromUrl url: M1) -> Cuckoo.__DoNotUse<URL, Void> where M1.MatchedType == URL {
            let matchers: [Cuckoo.ParameterMatcher<URL>] = [wrap(matchable: url) { $0 }]
            return cuckoo_manager.verify("fetchImage(fromUrl: URL)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
        }

        @discardableResult
        func comicRated<M1: Cuckoo.Matchable>(_ rating: M1) -> Cuckoo.__DoNotUse<UInt8, Void> where M1.MatchedType == UInt8 {
            let matchers: [Cuckoo.ParameterMatcher<UInt8>] = [wrap(matchable: rating) { $0 }]
            return cuckoo_manager.verify("comicRated(_: UInt8)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
        }
    }
}

class ShowComicInteractorInputStub: ShowComicInteractorInput {
    func fetchComic() {
        return DefaultValueRegistry.defaultValue(for: Void.self)
    }

    func fetchImage(fromUrl _: URL) {
        return DefaultValueRegistry.defaultValue(for: Void.self)
    }

    func comicRated(_: UInt8) {
        return DefaultValueRegistry.defaultValue(for: Void.self)
    }
}

// MARK: - Mocks generated from file: ComicRating/Modules/ShowComic/Interactor/ShowComicInteractorOutput.swift at 2020-08-29 09:34:23 +0000

//
//  ShowComicShowComicInteractorOutput.swift
//  ComicRating
//
//  Created by Adriana Pineda on 17/02/2020.
//  Copyright © 2020 Adriana Pineda. All rights reserved.
//

@testable import ComicRating
import Cuckoo

import Foundation

class MockShowComicInteractorOutput: ShowComicInteractorOutput, Cuckoo.ProtocolMock {
    typealias MocksType = ShowComicInteractorOutput

    typealias Stubbing = __StubbingProxy_ShowComicInteractorOutput
    typealias Verification = __VerificationProxy_ShowComicInteractorOutput

    let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

    private var __defaultImplStub: ShowComicInteractorOutput?

    func enableDefaultImplementation(_ stub: ShowComicInteractorOutput) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }

    func comicFetched(comic: Comic) {
        return cuckoo_manager.call("comicFetched(comic: Comic)",
                                   parameters: comic,
                                   escapingParameters: comic,
                                   superclassCall:

                                   Cuckoo.MockManager.crashOnProtocolSuperclassCall(),

                                   defaultCall: __defaultImplStub!.comicFetched(comic: comic))
    }

    func imageFetched(imageData: Data) {
        return cuckoo_manager.call("imageFetched(imageData: Data)",
                                   parameters: imageData,
                                   escapingParameters: imageData,
                                   superclassCall:

                                   Cuckoo.MockManager.crashOnProtocolSuperclassCall(),

                                   defaultCall: __defaultImplStub!.imageFetched(imageData: imageData))
    }

    func comicFetchFailed(message: String) {
        return cuckoo_manager.call("comicFetchFailed(message: String)",
                                   parameters: message,
                                   escapingParameters: message,
                                   superclassCall:

                                   Cuckoo.MockManager.crashOnProtocolSuperclassCall(),

                                   defaultCall: __defaultImplStub!.comicFetchFailed(message: message))
    }

    struct __StubbingProxy_ShowComicInteractorOutput: Cuckoo.StubbingProxy {
        private let cuckoo_manager: Cuckoo.MockManager

        init(manager: Cuckoo.MockManager) {
            cuckoo_manager = manager
        }

        func comicFetched<M1: Cuckoo.Matchable>(comic: M1) -> Cuckoo.ProtocolStubNoReturnFunction<Comic> where M1.MatchedType == Comic {
            let matchers: [Cuckoo.ParameterMatcher<Comic>] = [wrap(matchable: comic) { $0 }]
            return .init(stub: cuckoo_manager.createStub(for: MockShowComicInteractorOutput.self,
                                                         method: "comicFetched(comic: Comic)",
                                                         parameterMatchers: matchers))
        }

        func imageFetched<M1: Cuckoo.Matchable>(imageData: M1) -> Cuckoo.ProtocolStubNoReturnFunction<Data> where M1.MatchedType == Data {
            let matchers: [Cuckoo.ParameterMatcher<Data>] = [wrap(matchable: imageData) { $0 }]
            return .init(stub: cuckoo_manager.createStub(for: MockShowComicInteractorOutput.self,
                                                         method: "imageFetched(imageData: Data)",
                                                         parameterMatchers: matchers))
        }

        func comicFetchFailed<M1: Cuckoo.Matchable>(message: M1) -> Cuckoo.ProtocolStubNoReturnFunction<String> where M1.MatchedType == String {
            let matchers: [Cuckoo.ParameterMatcher<String>] = [wrap(matchable: message) { $0 }]
            return .init(stub: cuckoo_manager.createStub(for: MockShowComicInteractorOutput.self,
                                                         method: "comicFetchFailed(message: String)",
                                                         parameterMatchers: matchers))
        }
    }

    struct __VerificationProxy_ShowComicInteractorOutput: Cuckoo.VerificationProxy {
        private let cuckoo_manager: Cuckoo.MockManager
        private let callMatcher: Cuckoo.CallMatcher
        private let sourceLocation: Cuckoo.SourceLocation

        init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
            cuckoo_manager = manager
            self.callMatcher = callMatcher
            self.sourceLocation = sourceLocation
        }

        @discardableResult
        func comicFetched<M1: Cuckoo.Matchable>(comic: M1) -> Cuckoo.__DoNotUse<Comic, Void> where M1.MatchedType == Comic {
            let matchers: [Cuckoo.ParameterMatcher<Comic>] = [wrap(matchable: comic) { $0 }]
            return cuckoo_manager.verify("comicFetched(comic: Comic)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
        }

        @discardableResult
        func imageFetched<M1: Cuckoo.Matchable>(imageData: M1) -> Cuckoo.__DoNotUse<Data, Void> where M1.MatchedType == Data {
            let matchers: [Cuckoo.ParameterMatcher<Data>] = [wrap(matchable: imageData) { $0 }]
            return cuckoo_manager.verify("imageFetched(imageData: Data)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
        }

        @discardableResult
        func comicFetchFailed<M1: Cuckoo.Matchable>(message: M1) -> Cuckoo.__DoNotUse<String, Void> where M1.MatchedType == String {
            let matchers: [Cuckoo.ParameterMatcher<String>] = [wrap(matchable: message) { $0 }]
            return cuckoo_manager.verify("comicFetchFailed(message: String)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
        }
    }
}

class ShowComicInteractorOutputStub: ShowComicInteractorOutput {
    func comicFetched(comic _: Comic) {
        return DefaultValueRegistry.defaultValue(for: Void.self)
    }

    func imageFetched(imageData _: Data) {
        return DefaultValueRegistry.defaultValue(for: Void.self)
    }

    func comicFetchFailed(message _: String) {
        return DefaultValueRegistry.defaultValue(for: Void.self)
    }
}

// MARK: - Mocks generated from file: ComicRating/Modules/ShowComic/View/ShowComicViewController.swift at 2020-08-29 09:34:23 +0000

//
//  ShowComicShowComicViewController.swift
//  ComicRating
//
//  Created by Adriana Pineda on 17/02/2020.
//  Copyright © 2020 Adriana Pineda. All rights reserved.
//

@testable import ComicRating
import Cuckoo

import SkeletonView
import UIKit

class MockShowComicViewController: ShowComicViewController, Cuckoo.ClassMock {
    typealias MocksType = ShowComicViewController

    typealias Stubbing = __StubbingProxy_ShowComicViewController
    typealias Verification = __VerificationProxy_ShowComicViewController

    let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: true)

    private var __defaultImplStub: ShowComicViewController?

    func enableDefaultImplementation(_ stub: ShowComicViewController) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }

    override var comicTitleLabel: UILabel! {
        get {
            return cuckoo_manager.getter("comicTitleLabel",
                                         superclassCall:

                                         super.comicTitleLabel,

                                         defaultCall: __defaultImplStub!.comicTitleLabel)
        }

        set {
            cuckoo_manager.setter("comicTitleLabel",
                                  value: newValue,
                                  superclassCall:

                                  super.comicTitleLabel = newValue,

                                  defaultCall: __defaultImplStub!.comicTitleLabel = newValue)
        }
    }

    override var comicNumberLabel: UILabel! {
        get {
            return cuckoo_manager.getter("comicNumberLabel",
                                         superclassCall:

                                         super.comicNumberLabel,

                                         defaultCall: __defaultImplStub!.comicNumberLabel)
        }

        set {
            cuckoo_manager.setter("comicNumberLabel",
                                  value: newValue,
                                  superclassCall:

                                  super.comicNumberLabel = newValue,

                                  defaultCall: __defaultImplStub!.comicNumberLabel = newValue)
        }
    }

    override var comicDateLabel: UILabel! {
        get {
            return cuckoo_manager.getter("comicDateLabel",
                                         superclassCall:

                                         super.comicDateLabel,

                                         defaultCall: __defaultImplStub!.comicDateLabel)
        }

        set {
            cuckoo_manager.setter("comicDateLabel",
                                  value: newValue,
                                  superclassCall:

                                  super.comicDateLabel = newValue,

                                  defaultCall: __defaultImplStub!.comicDateLabel = newValue)
        }
    }

    override var comicImageView: UIImageView! {
        get {
            return cuckoo_manager.getter("comicImageView",
                                         superclassCall:

                                         super.comicImageView,

                                         defaultCall: __defaultImplStub!.comicImageView)
        }

        set {
            cuckoo_manager.setter("comicImageView",
                                  value: newValue,
                                  superclassCall:

                                  super.comicImageView = newValue,

                                  defaultCall: __defaultImplStub!.comicImageView = newValue)
        }
    }

    override var nextButton: UIButton! {
        get {
            return cuckoo_manager.getter("nextButton",
                                         superclassCall:

                                         super.nextButton,

                                         defaultCall: __defaultImplStub!.nextButton)
        }

        set {
            cuckoo_manager.setter("nextButton",
                                  value: newValue,
                                  superclassCall:

                                  super.nextButton = newValue,

                                  defaultCall: __defaultImplStub!.nextButton = newValue)
        }
    }

    override var ratingView: RatingView! {
        get {
            return cuckoo_manager.getter("ratingView",
                                         superclassCall:

                                         super.ratingView,

                                         defaultCall: __defaultImplStub!.ratingView)
        }

        set {
            cuckoo_manager.setter("ratingView",
                                  value: newValue,
                                  superclassCall:

                                  super.ratingView = newValue,

                                  defaultCall: __defaultImplStub!.ratingView = newValue)
        }
    }

    override var loadingIndicator: UIActivityIndicatorView! {
        get {
            return cuckoo_manager.getter("loadingIndicator",
                                         superclassCall:

                                         super.loadingIndicator,

                                         defaultCall: __defaultImplStub!.loadingIndicator)
        }

        set {
            cuckoo_manager.setter("loadingIndicator",
                                  value: newValue,
                                  superclassCall:

                                  super.loadingIndicator = newValue,

                                  defaultCall: __defaultImplStub!.loadingIndicator = newValue)
        }
    }

    override var imageViewHeight: NSLayoutConstraint! {
        get {
            return cuckoo_manager.getter("imageViewHeight",
                                         superclassCall:

                                         super.imageViewHeight,

                                         defaultCall: __defaultImplStub!.imageViewHeight)
        }

        set {
            cuckoo_manager.setter("imageViewHeight",
                                  value: newValue,
                                  superclassCall:

                                  super.imageViewHeight = newValue,

                                  defaultCall: __defaultImplStub!.imageViewHeight = newValue)
        }
    }

    override var imageViewWidth: NSLayoutConstraint! {
        get {
            return cuckoo_manager.getter("imageViewWidth",
                                         superclassCall:

                                         super.imageViewWidth,

                                         defaultCall: __defaultImplStub!.imageViewWidth)
        }

        set {
            cuckoo_manager.setter("imageViewWidth",
                                  value: newValue,
                                  superclassCall:

                                  super.imageViewWidth = newValue,

                                  defaultCall: __defaultImplStub!.imageViewWidth = newValue)
        }
    }

    override var output: ShowComicViewOutput! {
        get {
            return cuckoo_manager.getter("output",
                                         superclassCall:

                                         super.output,

                                         defaultCall: __defaultImplStub!.output)
        }

        set {
            cuckoo_manager.setter("output",
                                  value: newValue,
                                  superclassCall:

                                  super.output = newValue,

                                  defaultCall: __defaultImplStub!.output = newValue)
        }
    }

    override func viewDidLoad() {
        return cuckoo_manager.call("viewDidLoad()",
                                   parameters: (),
                                   escapingParameters: (),
                                   superclassCall:

                                   super.viewDidLoad(),

                                   defaultCall: __defaultImplStub!.viewDidLoad())
    }

    override func viewWillAppear(_ animated: Bool) {
        return cuckoo_manager.call("viewWillAppear(_: Bool)",
                                   parameters: animated,
                                   escapingParameters: animated,
                                   superclassCall:

                                   super.viewWillAppear(animated),

                                   defaultCall: __defaultImplStub!.viewWillAppear(animated))
    }

    override func nextButtonClicked(_ parameter0: Any) {
        return cuckoo_manager.call("nextButtonClicked(_: Any)",
                                   parameters: parameter0,
                                   escapingParameters: parameter0,
                                   superclassCall:

                                   super.nextButtonClicked(parameter0),

                                   defaultCall: __defaultImplStub!.nextButtonClicked(parameter0))
    }

    struct __StubbingProxy_ShowComicViewController: Cuckoo.StubbingProxy {
        private let cuckoo_manager: Cuckoo.MockManager

        init(manager: Cuckoo.MockManager) {
            cuckoo_manager = manager
        }

        var comicTitleLabel: Cuckoo.ClassToBeStubbedOptionalProperty<MockShowComicViewController, UILabel> {
            return .init(manager: cuckoo_manager, name: "comicTitleLabel")
        }

        var comicNumberLabel: Cuckoo.ClassToBeStubbedOptionalProperty<MockShowComicViewController, UILabel> {
            return .init(manager: cuckoo_manager, name: "comicNumberLabel")
        }

        var comicDateLabel: Cuckoo.ClassToBeStubbedOptionalProperty<MockShowComicViewController, UILabel> {
            return .init(manager: cuckoo_manager, name: "comicDateLabel")
        }

        var comicImageView: Cuckoo.ClassToBeStubbedOptionalProperty<MockShowComicViewController, UIImageView> {
            return .init(manager: cuckoo_manager, name: "comicImageView")
        }

        var nextButton: Cuckoo.ClassToBeStubbedOptionalProperty<MockShowComicViewController, UIButton> {
            return .init(manager: cuckoo_manager, name: "nextButton")
        }

        var ratingView: Cuckoo.ClassToBeStubbedOptionalProperty<MockShowComicViewController, RatingView> {
            return .init(manager: cuckoo_manager, name: "ratingView")
        }

        var loadingIndicator: Cuckoo.ClassToBeStubbedOptionalProperty<MockShowComicViewController,
                                                                      UIActivityIndicatorView> {
            return .init(manager: cuckoo_manager, name: "loadingIndicator")
        }

        var imageViewHeight: Cuckoo.ClassToBeStubbedOptionalProperty<MockShowComicViewController, NSLayoutConstraint> {
            return .init(manager: cuckoo_manager, name: "imageViewHeight")
        }

        var imageViewWidth: Cuckoo.ClassToBeStubbedOptionalProperty<MockShowComicViewController, NSLayoutConstraint> {
            return .init(manager: cuckoo_manager, name: "imageViewWidth")
        }

        var output: Cuckoo.ClassToBeStubbedOptionalProperty<MockShowComicViewController, ShowComicViewOutput> {
            return .init(manager: cuckoo_manager, name: "output")
        }

        func viewDidLoad() -> Cuckoo.ClassStubNoReturnFunction<Void> {
            let matchers: [Cuckoo.ParameterMatcher<Void>] = []
            return .init(stub: cuckoo_manager.createStub(for: MockShowComicViewController.self, method: "viewDidLoad()",
                                                         parameterMatchers: matchers))
        }

        func viewWillAppear<M1: Cuckoo.Matchable>(_ animated: M1) -> Cuckoo.ClassStubNoReturnFunction<Bool> where M1.MatchedType == Bool {
            let matchers: [Cuckoo.ParameterMatcher<Bool>] = [wrap(matchable: animated) { $0 }]
            return .init(stub: cuckoo_manager.createStub(for: MockShowComicViewController.self,
                                                         method: "viewWillAppear(_: Bool)",
                                                         parameterMatchers: matchers))
        }

        func nextButtonClicked<M1: Cuckoo.Matchable>(_ parameter0: M1) -> Cuckoo.ClassStubNoReturnFunction<Any> where M1.MatchedType == Any {
            let matchers: [Cuckoo.ParameterMatcher<Any>] = [wrap(matchable: parameter0) { $0 }]
            return .init(stub: cuckoo_manager.createStub(for: MockShowComicViewController.self,
                                                         method: "nextButtonClicked(_: Any)",
                                                         parameterMatchers: matchers))
        }
    }

    struct __VerificationProxy_ShowComicViewController: Cuckoo.VerificationProxy {
        private let cuckoo_manager: Cuckoo.MockManager
        private let callMatcher: Cuckoo.CallMatcher
        private let sourceLocation: Cuckoo.SourceLocation

        init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
            cuckoo_manager = manager
            self.callMatcher = callMatcher
            self.sourceLocation = sourceLocation
        }

        var comicTitleLabel: Cuckoo.VerifyOptionalProperty<UILabel> {
            return .init(manager: cuckoo_manager, name: "comicTitleLabel", callMatcher: callMatcher,
                         sourceLocation: sourceLocation)
        }

        var comicNumberLabel: Cuckoo.VerifyOptionalProperty<UILabel> {
            return .init(manager: cuckoo_manager, name: "comicNumberLabel", callMatcher: callMatcher,
                         sourceLocation: sourceLocation)
        }

        var comicDateLabel: Cuckoo.VerifyOptionalProperty<UILabel> {
            return .init(manager: cuckoo_manager, name: "comicDateLabel", callMatcher: callMatcher,
                         sourceLocation: sourceLocation)
        }

        var comicImageView: Cuckoo.VerifyOptionalProperty<UIImageView> {
            return .init(manager: cuckoo_manager, name: "comicImageView", callMatcher: callMatcher,
                         sourceLocation: sourceLocation)
        }

        var nextButton: Cuckoo.VerifyOptionalProperty<UIButton> {
            return .init(manager: cuckoo_manager, name: "nextButton", callMatcher: callMatcher,
                         sourceLocation: sourceLocation)
        }

        var ratingView: Cuckoo.VerifyOptionalProperty<RatingView> {
            return .init(manager: cuckoo_manager, name: "ratingView", callMatcher: callMatcher,
                         sourceLocation: sourceLocation)
        }

        var loadingIndicator: Cuckoo.VerifyOptionalProperty<UIActivityIndicatorView> {
            return .init(manager: cuckoo_manager, name: "loadingIndicator", callMatcher: callMatcher,
                         sourceLocation: sourceLocation)
        }

        var imageViewHeight: Cuckoo.VerifyOptionalProperty<NSLayoutConstraint> {
            return .init(manager: cuckoo_manager, name: "imageViewHeight", callMatcher: callMatcher,
                         sourceLocation: sourceLocation)
        }

        var imageViewWidth: Cuckoo.VerifyOptionalProperty<NSLayoutConstraint> {
            return .init(manager: cuckoo_manager, name: "imageViewWidth", callMatcher: callMatcher,
                         sourceLocation: sourceLocation)
        }

        var output: Cuckoo.VerifyOptionalProperty<ShowComicViewOutput> {
            return .init(manager: cuckoo_manager, name: "output", callMatcher: callMatcher,
                         sourceLocation: sourceLocation)
        }

        @discardableResult
        func viewDidLoad() -> Cuckoo.__DoNotUse<Void, Void> {
            let matchers: [Cuckoo.ParameterMatcher<Void>] = []
            return cuckoo_manager.verify("viewDidLoad()", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
        }

        @discardableResult
        func viewWillAppear<M1: Cuckoo.Matchable>(_ animated: M1) -> Cuckoo.__DoNotUse<Bool, Void> where M1.MatchedType == Bool {
            let matchers: [Cuckoo.ParameterMatcher<Bool>] = [wrap(matchable: animated) { $0 }]
            return cuckoo_manager.verify("viewWillAppear(_: Bool)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
        }

        @discardableResult
        func nextButtonClicked<M1: Cuckoo.Matchable>(_ parameter0: M1) -> Cuckoo.__DoNotUse<Any, Void> where M1.MatchedType == Any {
            let matchers: [Cuckoo.ParameterMatcher<Any>] = [wrap(matchable: parameter0) { $0 }]
            return cuckoo_manager.verify("nextButtonClicked(_: Any)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
        }
    }
}

class ShowComicViewControllerStub: ShowComicViewController {
    override var comicTitleLabel: UILabel! {
        get {
            return DefaultValueRegistry.defaultValue(for: (UILabel?).self)
        }

        set {}
    }

    override var comicNumberLabel: UILabel! {
        get {
            return DefaultValueRegistry.defaultValue(for: (UILabel?).self)
        }

        set {}
    }

    override var comicDateLabel: UILabel! {
        get {
            return DefaultValueRegistry.defaultValue(for: (UILabel?).self)
        }

        set {}
    }

    override var comicImageView: UIImageView! {
        get {
            return DefaultValueRegistry.defaultValue(for: (UIImageView?).self)
        }

        set {}
    }

    override var nextButton: UIButton! {
        get {
            return DefaultValueRegistry.defaultValue(for: (UIButton?).self)
        }

        set {}
    }

    override var ratingView: RatingView! {
        get {
            return DefaultValueRegistry.defaultValue(for: (RatingView?).self)
        }

        set {}
    }

    override var loadingIndicator: UIActivityIndicatorView! {
        get {
            return DefaultValueRegistry.defaultValue(for: (UIActivityIndicatorView?).self)
        }

        set {}
    }

    override var imageViewHeight: NSLayoutConstraint! {
        get {
            return DefaultValueRegistry.defaultValue(for: (NSLayoutConstraint?).self)
        }

        set {}
    }

    override var imageViewWidth: NSLayoutConstraint! {
        get {
            return DefaultValueRegistry.defaultValue(for: (NSLayoutConstraint?).self)
        }

        set {}
    }

    override var output: ShowComicViewOutput! {
        get {
            return DefaultValueRegistry.defaultValue(for: (ShowComicViewOutput?).self)
        }

        set {}
    }

    override func viewDidLoad() {
        return DefaultValueRegistry.defaultValue(for: Void.self)
    }

    override func viewWillAppear(_: Bool) {
        return DefaultValueRegistry.defaultValue(for: Void.self)
    }

    override func nextButtonClicked(_: Any) {
        return DefaultValueRegistry.defaultValue(for: Void.self)
    }
}

// MARK: - Mocks generated from file: ComicRating/Modules/ShowComic/View/ShowComicViewInput.swift at 2020-08-29 09:34:23 +0000

@testable import ComicRating
//
//  ShowComicShowComicViewInput.swift
//  ComicRating
//
//  Created by Adriana Pineda on 17/02/2020.
//  Copyright © 2020 Adriana Pineda. All rights reserved.
//
import Cuckoo

import Foundation

class MockShowComicViewInput: ShowComicViewInput, Cuckoo.ProtocolMock {
    typealias MocksType = ShowComicViewInput

    typealias Stubbing = __StubbingProxy_ShowComicViewInput
    typealias Verification = __VerificationProxy_ShowComicViewInput

    let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

    private var __defaultImplStub: ShowComicViewInput?

    func enableDefaultImplementation(_ stub: ShowComicViewInput) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }

    func setupInitialState() {
        return cuckoo_manager.call("setupInitialState()",
                                   parameters: (),
                                   escapingParameters: (),
                                   superclassCall:

                                   Cuckoo.MockManager.crashOnProtocolSuperclassCall(),

                                   defaultCall: __defaultImplStub!.setupInitialState())
    }

    func showComic(comic: UpcomingComic) {
        return cuckoo_manager.call("showComic(comic: UpcomingComic)",
                                   parameters: comic,
                                   escapingParameters: comic,
                                   superclassCall:

                                   Cuckoo.MockManager.crashOnProtocolSuperclassCall(),

                                   defaultCall: __defaultImplStub!.showComic(comic: comic))
    }

    func showImage(imageData: Data) {
        return cuckoo_manager.call("showImage(imageData: Data)",
                                   parameters: imageData,
                                   escapingParameters: imageData,
                                   superclassCall:

                                   Cuckoo.MockManager.crashOnProtocolSuperclassCall(),

                                   defaultCall: __defaultImplStub!.showImage(imageData: imageData))
    }

    func resetRating() {
        return cuckoo_manager.call("resetRating()",
                                   parameters: (),
                                   escapingParameters: (),
                                   superclassCall:

                                   Cuckoo.MockManager.crashOnProtocolSuperclassCall(),

                                   defaultCall: __defaultImplStub!.resetRating())
    }

    func showLoadingContent(onElement element: Element) {
        return cuckoo_manager.call("showLoadingContent(onElement: Element)",
                                   parameters: element,
                                   escapingParameters: element,
                                   superclassCall:

                                   Cuckoo.MockManager.crashOnProtocolSuperclassCall(),

                                   defaultCall: __defaultImplStub!.showLoadingContent(onElement: element))
    }

    func stopLoadingContent(onElement element: Element) {
        return cuckoo_manager.call("stopLoadingContent(onElement: Element)",
                                   parameters: element,
                                   escapingParameters: element,
                                   superclassCall:

                                   Cuckoo.MockManager.crashOnProtocolSuperclassCall(),

                                   defaultCall: __defaultImplStub!.stopLoadingContent(onElement: element))
    }

    func showOkAlertMessage(title: String, message: String) {
        return cuckoo_manager.call("showOkAlertMessage(title: String, message: String)",
                                   parameters: (title, message),
                                   escapingParameters: (title, message),
                                   superclassCall:

                                   Cuckoo.MockManager.crashOnProtocolSuperclassCall(),

                                   defaultCall: __defaultImplStub!.showOkAlertMessage(title: title, message: message))
    }

    struct __StubbingProxy_ShowComicViewInput: Cuckoo.StubbingProxy {
        private let cuckoo_manager: Cuckoo.MockManager

        init(manager: Cuckoo.MockManager) {
            cuckoo_manager = manager
        }

        func setupInitialState() -> Cuckoo.ProtocolStubNoReturnFunction<Void> {
            let matchers: [Cuckoo.ParameterMatcher<Void>] = []
            return .init(stub: cuckoo_manager.createStub(for: MockShowComicViewInput.self,
                                                         method: "setupInitialState()", parameterMatchers: matchers))
        }

        func showComic<M1: Cuckoo.Matchable>(comic: M1) -> Cuckoo.ProtocolStubNoReturnFunction<UpcomingComic> where M1.MatchedType == UpcomingComic {
            let matchers: [Cuckoo.ParameterMatcher<UpcomingComic>] = [wrap(matchable: comic) { $0 }]
            return .init(stub: cuckoo_manager.createStub(for: MockShowComicViewInput.self,
                                                         method: "showComic(comic: UpcomingComic)",
                                                         parameterMatchers: matchers))
        }

        func showImage<M1: Cuckoo.Matchable>(imageData: M1) -> Cuckoo.ProtocolStubNoReturnFunction<Data> where M1.MatchedType == Data {
            let matchers: [Cuckoo.ParameterMatcher<Data>] = [wrap(matchable: imageData) { $0 }]
            return .init(stub: cuckoo_manager.createStub(for: MockShowComicViewInput.self,
                                                         method: "showImage(imageData: Data)",
                                                         parameterMatchers: matchers))
        }

        func resetRating() -> Cuckoo.ProtocolStubNoReturnFunction<Void> {
            let matchers: [Cuckoo.ParameterMatcher<Void>] = []
            return .init(stub: cuckoo_manager.createStub(for: MockShowComicViewInput.self, method: "resetRating()",
                                                         parameterMatchers: matchers))
        }

        func showLoadingContent<M1: Cuckoo.Matchable>(onElement element: M1) -> Cuckoo.ProtocolStubNoReturnFunction<Element> where M1.MatchedType == Element {
            let matchers: [Cuckoo.ParameterMatcher<Element>] = [wrap(matchable: element) { $0 }]
            return .init(stub: cuckoo_manager.createStub(for: MockShowComicViewInput.self,
                                                         method: "showLoadingContent(onElement: Element)",
                                                         parameterMatchers: matchers))
        }

        func stopLoadingContent<M1: Cuckoo.Matchable>(onElement element: M1) -> Cuckoo.ProtocolStubNoReturnFunction<Element> where M1.MatchedType == Element {
            let matchers: [Cuckoo.ParameterMatcher<Element>] = [wrap(matchable: element) { $0 }]
            return .init(stub: cuckoo_manager.createStub(for: MockShowComicViewInput.self,
                                                         method: "stopLoadingContent(onElement: Element)",
                                                         parameterMatchers: matchers))
        }

        func showOkAlertMessage<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable>(title: M1, message: M2) -> Cuckoo.ProtocolStubNoReturnFunction<(String,
                                                                                                                                           String)> where M1.MatchedType == String, M2.MatchedType == String {
            let matchers: [Cuckoo.ParameterMatcher<(String, String)>] = [
                wrap(matchable: title) { $0.0 },
                wrap(matchable: message) { $0.1 }
            ]
            return .init(stub: cuckoo_manager.createStub(for: MockShowComicViewInput.self,
                                                         method: "showOkAlertMessage(title: String, message: String)",
                                                         parameterMatchers: matchers))
        }
    }

    struct __VerificationProxy_ShowComicViewInput: Cuckoo.VerificationProxy {
        private let cuckoo_manager: Cuckoo.MockManager
        private let callMatcher: Cuckoo.CallMatcher
        private let sourceLocation: Cuckoo.SourceLocation

        init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
            cuckoo_manager = manager
            self.callMatcher = callMatcher
            self.sourceLocation = sourceLocation
        }

        @discardableResult
        func setupInitialState() -> Cuckoo.__DoNotUse<Void, Void> {
            let matchers: [Cuckoo.ParameterMatcher<Void>] = []
            return cuckoo_manager.verify("setupInitialState()", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
        }

        @discardableResult
        func showComic<M1: Cuckoo.Matchable>(comic: M1) -> Cuckoo.__DoNotUse<UpcomingComic, Void> where M1.MatchedType == UpcomingComic {
            let matchers: [Cuckoo.ParameterMatcher<UpcomingComic>] = [wrap(matchable: comic) { $0 }]
            return cuckoo_manager.verify("showComic(comic: UpcomingComic)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
        }

        @discardableResult
        func showImage<M1: Cuckoo.Matchable>(imageData: M1) -> Cuckoo.__DoNotUse<Data, Void> where M1.MatchedType == Data {
            let matchers: [Cuckoo.ParameterMatcher<Data>] = [wrap(matchable: imageData) { $0 }]
            return cuckoo_manager.verify("showImage(imageData: Data)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
        }

        @discardableResult
        func resetRating() -> Cuckoo.__DoNotUse<Void, Void> {
            let matchers: [Cuckoo.ParameterMatcher<Void>] = []
            return cuckoo_manager.verify("resetRating()", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
        }

        @discardableResult
        func showLoadingContent<M1: Cuckoo.Matchable>(onElement element: M1) -> Cuckoo.__DoNotUse<Element, Void> where M1.MatchedType == Element {
            let matchers: [Cuckoo.ParameterMatcher<Element>] = [wrap(matchable: element) { $0 }]
            return cuckoo_manager.verify("showLoadingContent(onElement: Element)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
        }

        @discardableResult
        func stopLoadingContent<M1: Cuckoo.Matchable>(onElement element: M1) -> Cuckoo.__DoNotUse<Element, Void> where M1.MatchedType == Element {
            let matchers: [Cuckoo.ParameterMatcher<Element>] = [wrap(matchable: element) { $0 }]
            return cuckoo_manager.verify("stopLoadingContent(onElement: Element)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
        }

        @discardableResult
        func showOkAlertMessage<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable>(title: M1, message: M2) -> Cuckoo.__DoNotUse<(String,
                                                                                                                         String), Void> where M1.MatchedType == String, M2.MatchedType == String {
            let matchers: [Cuckoo.ParameterMatcher<(String, String)>] = [
                wrap(matchable: title) { $0.0 },
                wrap(matchable: message) { $0.1 }
            ]
            return cuckoo_manager.verify("showOkAlertMessage(title: String, message: String)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
        }
    }
}

class ShowComicViewInputStub: ShowComicViewInput {
    func setupInitialState() {
        return DefaultValueRegistry.defaultValue(for: Void.self)
    }

    func showComic(comic _: UpcomingComic) {
        return DefaultValueRegistry.defaultValue(for: Void.self)
    }

    func showImage(imageData _: Data) {
        return DefaultValueRegistry.defaultValue(for: Void.self)
    }

    func resetRating() {
        return DefaultValueRegistry.defaultValue(for: Void.self)
    }

    func showLoadingContent(onElement _: Element) {
        return DefaultValueRegistry.defaultValue(for: Void.self)
    }

    func stopLoadingContent(onElement _: Element) {
        return DefaultValueRegistry.defaultValue(for: Void.self)
    }

    func showOkAlertMessage(title _: String, message _: String) {
        return DefaultValueRegistry.defaultValue(for: Void.self)
    }
}

// MARK: - Mocks generated from file: ComicRating/Modules/ShowComic/View/ShowComicViewOutput.swift at 2020-08-29 09:34:23 +0000

//
//  ShowComicShowComicViewOutput.swift
//  ComicRating
//
//  Created by Adriana Pineda on 17/02/2020.
//  Copyright © 2020 Adriana Pineda. All rights reserved.
//

@testable import ComicRating
import Cuckoo

class MockShowComicViewOutput: ShowComicViewOutput, Cuckoo.ProtocolMock {
    typealias MocksType = ShowComicViewOutput

    typealias Stubbing = __StubbingProxy_ShowComicViewOutput
    typealias Verification = __VerificationProxy_ShowComicViewOutput

    let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

    private var __defaultImplStub: ShowComicViewOutput?

    func enableDefaultImplementation(_ stub: ShowComicViewOutput) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }

    func viewIsReady() {
        return cuckoo_manager.call("viewIsReady()",
                                   parameters: (),
                                   escapingParameters: (),
                                   superclassCall:

                                   Cuckoo.MockManager.crashOnProtocolSuperclassCall(),

                                   defaultCall: __defaultImplStub!.viewIsReady())
    }

    func nextButtonClicked() {
        return cuckoo_manager.call("nextButtonClicked()",
                                   parameters: (),
                                   escapingParameters: (),
                                   superclassCall:

                                   Cuckoo.MockManager.crashOnProtocolSuperclassCall(),

                                   defaultCall: __defaultImplStub!.nextButtonClicked())
    }

    func comicRated(rating: UInt8) {
        return cuckoo_manager.call("comicRated(rating: UInt8)",
                                   parameters: rating,
                                   escapingParameters: rating,
                                   superclassCall:

                                   Cuckoo.MockManager.crashOnProtocolSuperclassCall(),

                                   defaultCall: __defaultImplStub!.comicRated(rating: rating))
    }

    struct __StubbingProxy_ShowComicViewOutput: Cuckoo.StubbingProxy {
        private let cuckoo_manager: Cuckoo.MockManager

        init(manager: Cuckoo.MockManager) {
            cuckoo_manager = manager
        }

        func viewIsReady() -> Cuckoo.ProtocolStubNoReturnFunction<Void> {
            let matchers: [Cuckoo.ParameterMatcher<Void>] = []
            return .init(stub: cuckoo_manager.createStub(for: MockShowComicViewOutput.self, method: "viewIsReady()",
                                                         parameterMatchers: matchers))
        }

        func nextButtonClicked() -> Cuckoo.ProtocolStubNoReturnFunction<Void> {
            let matchers: [Cuckoo.ParameterMatcher<Void>] = []
            return .init(stub: cuckoo_manager.createStub(for: MockShowComicViewOutput.self,
                                                         method: "nextButtonClicked()", parameterMatchers: matchers))
        }

        func comicRated<M1: Cuckoo.Matchable>(rating: M1) -> Cuckoo.ProtocolStubNoReturnFunction<UInt8> where M1.MatchedType == UInt8 {
            let matchers: [Cuckoo.ParameterMatcher<UInt8>] = [wrap(matchable: rating) { $0 }]
            return .init(stub: cuckoo_manager.createStub(for: MockShowComicViewOutput.self,
                                                         method: "comicRated(rating: UInt8)",
                                                         parameterMatchers: matchers))
        }
    }

    struct __VerificationProxy_ShowComicViewOutput: Cuckoo.VerificationProxy {
        private let cuckoo_manager: Cuckoo.MockManager
        private let callMatcher: Cuckoo.CallMatcher
        private let sourceLocation: Cuckoo.SourceLocation

        init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
            cuckoo_manager = manager
            self.callMatcher = callMatcher
            self.sourceLocation = sourceLocation
        }

        @discardableResult
        func viewIsReady() -> Cuckoo.__DoNotUse<Void, Void> {
            let matchers: [Cuckoo.ParameterMatcher<Void>] = []
            return cuckoo_manager.verify("viewIsReady()", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
        }

        @discardableResult
        func nextButtonClicked() -> Cuckoo.__DoNotUse<Void, Void> {
            let matchers: [Cuckoo.ParameterMatcher<Void>] = []
            return cuckoo_manager.verify("nextButtonClicked()", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
        }

        @discardableResult
        func comicRated<M1: Cuckoo.Matchable>(rating: M1) -> Cuckoo.__DoNotUse<UInt8, Void> where M1.MatchedType == UInt8 {
            let matchers: [Cuckoo.ParameterMatcher<UInt8>] = [wrap(matchable: rating) { $0 }]
            return cuckoo_manager.verify("comicRated(rating: UInt8)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
        }
    }
}

class ShowComicViewOutputStub: ShowComicViewOutput {
    func viewIsReady() {
        return DefaultValueRegistry.defaultValue(for: Void.self)
    }

    func nextButtonClicked() {
        return DefaultValueRegistry.defaultValue(for: Void.self)
    }

    func comicRated(rating _: UInt8) {
        return DefaultValueRegistry.defaultValue(for: Void.self)
    }
}

// MARK: - Mocks generated from file: ComicRating/Modules/TabBar/Interactor/TabBarInteractorInput.swift at 2020-08-29 09:34:23 +0000

//
//  TabBarTabBarInteractorInput.swift
//  ComicRating
//
//  Created by Adriana Pineda on 25/06/2020.
//  Copyright © 2020 Adriana Pineda. All rights reserved.
//

@testable import ComicRating
import Cuckoo

import Foundation

class MockTabBarInteractorInput: TabBarInteractorInput, Cuckoo.ProtocolMock {
    typealias MocksType = TabBarInteractorInput

    typealias Stubbing = __StubbingProxy_TabBarInteractorInput
    typealias Verification = __VerificationProxy_TabBarInteractorInput

    let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

    private var __defaultImplStub: TabBarInteractorInput?

    func enableDefaultImplementation(_ stub: TabBarInteractorInput) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }

    struct __StubbingProxy_TabBarInteractorInput: Cuckoo.StubbingProxy {
        private let cuckoo_manager: Cuckoo.MockManager

        init(manager: Cuckoo.MockManager) {
            cuckoo_manager = manager
        }
    }

    struct __VerificationProxy_TabBarInteractorInput: Cuckoo.VerificationProxy {
        private let cuckoo_manager: Cuckoo.MockManager
        private let callMatcher: Cuckoo.CallMatcher
        private let sourceLocation: Cuckoo.SourceLocation

        init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
            cuckoo_manager = manager
            self.callMatcher = callMatcher
            self.sourceLocation = sourceLocation
        }
    }
}

class TabBarInteractorInputStub: TabBarInteractorInput {}

// MARK: - Mocks generated from file: ComicRating/Modules/TabBar/Router/TabBarRouterInput.swift at 2020-08-29 09:34:23 +0000

//
//  TabBarRouterInput.swift
//  ComicRating
//
//  Created by Adriana Pineda on 12/05/2020.
//  Copyright © 2020 Adriana Pineda. All rights reserved.
//

@testable import ComicRating
import Cuckoo

class MockTabBarRouterInput: TabBarRouterInput, Cuckoo.ProtocolMock {
    typealias MocksType = TabBarRouterInput

    typealias Stubbing = __StubbingProxy_TabBarRouterInput
    typealias Verification = __VerificationProxy_TabBarRouterInput

    let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

    private var __defaultImplStub: TabBarRouterInput?

    func enableDefaultImplementation(_ stub: TabBarRouterInput) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }

    func getTabSections() -> TabSections? {
        return cuckoo_manager.call("getTabSections() -> TabSections?",
                                   parameters: (),
                                   escapingParameters: (),
                                   superclassCall:

                                   Cuckoo.MockManager.crashOnProtocolSuperclassCall(),

                                   defaultCall: __defaultImplStub!.getTabSections())
    }

    struct __StubbingProxy_TabBarRouterInput: Cuckoo.StubbingProxy {
        private let cuckoo_manager: Cuckoo.MockManager

        init(manager: Cuckoo.MockManager) {
            cuckoo_manager = manager
        }

        func getTabSections() -> Cuckoo.ProtocolStubFunction<Void, TabSections?> {
            let matchers: [Cuckoo.ParameterMatcher<Void>] = []
            return .init(stub: cuckoo_manager.createStub(for: MockTabBarRouterInput.self,
                                                         method: "getTabSections() -> TabSections?",
                                                         parameterMatchers: matchers))
        }
    }

    struct __VerificationProxy_TabBarRouterInput: Cuckoo.VerificationProxy {
        private let cuckoo_manager: Cuckoo.MockManager
        private let callMatcher: Cuckoo.CallMatcher
        private let sourceLocation: Cuckoo.SourceLocation

        init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
            cuckoo_manager = manager
            self.callMatcher = callMatcher
            self.sourceLocation = sourceLocation
        }

        @discardableResult
        func getTabSections() -> Cuckoo.__DoNotUse<Void, TabSections?> {
            let matchers: [Cuckoo.ParameterMatcher<Void>] = []
            return cuckoo_manager.verify("getTabSections() -> TabSections?", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
        }
    }
}

class TabBarRouterInputStub: TabBarRouterInput {
    func getTabSections() -> TabSections? {
        return DefaultValueRegistry.defaultValue(for: (TabSections?).self)
    }
}

// MARK: - Mocks generated from file: ComicRating/Modules/TabBar/View/TabBarViewInput.swift at 2020-08-29 09:34:23 +0000

@testable import ComicRating
//
//  TabBarTabBarViewInput.swift
//  ComicRating
//
//  Created by Adriana Pineda on 25/06/2020.
//  Copyright © 2020 Adriana Pineda. All rights reserved.
//
import Cuckoo

import UIKit

class MockTabBarViewInput: TabBarViewInput, Cuckoo.ProtocolMock {
    typealias MocksType = TabBarViewInput

    typealias Stubbing = __StubbingProxy_TabBarViewInput
    typealias Verification = __VerificationProxy_TabBarViewInput

    let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

    private var __defaultImplStub: TabBarViewInput?

    func enableDefaultImplementation(_ stub: TabBarViewInput) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }

    func setup(viewControllers: [UIViewController]) {
        return cuckoo_manager.call("setup(viewControllers: [UIViewController])",
                                   parameters: viewControllers,
                                   escapingParameters: viewControllers,
                                   superclassCall:

                                   Cuckoo.MockManager.crashOnProtocolSuperclassCall(),

                                   defaultCall: __defaultImplStub!.setup(viewControllers: viewControllers))
    }

    struct __StubbingProxy_TabBarViewInput: Cuckoo.StubbingProxy {
        private let cuckoo_manager: Cuckoo.MockManager

        init(manager: Cuckoo.MockManager) {
            cuckoo_manager = manager
        }

        func setup<M1: Cuckoo.Matchable>(viewControllers: M1) -> Cuckoo.ProtocolStubNoReturnFunction<[UIViewController]> where M1.MatchedType == [
            UIViewController
        ] {
            let matchers: [Cuckoo.ParameterMatcher<[UIViewController]>] = [wrap(matchable: viewControllers) { $0 }]
            return .init(stub: cuckoo_manager.createStub(for: MockTabBarViewInput.self,
                                                         method: "setup(viewControllers: [UIViewController])",
                                                         parameterMatchers: matchers))
        }
    }

    struct __VerificationProxy_TabBarViewInput: Cuckoo.VerificationProxy {
        private let cuckoo_manager: Cuckoo.MockManager
        private let callMatcher: Cuckoo.CallMatcher
        private let sourceLocation: Cuckoo.SourceLocation

        init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
            cuckoo_manager = manager
            self.callMatcher = callMatcher
            self.sourceLocation = sourceLocation
        }

        @discardableResult
        func setup<M1: Cuckoo.Matchable>(viewControllers: M1) -> Cuckoo.__DoNotUse<[UIViewController], Void> where M1.MatchedType == [
            UIViewController
        ] {
            let matchers: [Cuckoo.ParameterMatcher<[UIViewController]>] = [wrap(matchable: viewControllers) { $0 }]
            return cuckoo_manager.verify("setup(viewControllers: [UIViewController])", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
        }
    }
}

class TabBarViewInputStub: TabBarViewInput {
    func setup(viewControllers _: [UIViewController]) {
        return DefaultValueRegistry.defaultValue(for: Void.self)
    }
}

// MARK: - Mocks generated from file: ComicRating/Modules/TabBar/View/TabBarViewOutput.swift at 2020-08-29 09:34:23 +0000

//
//  TabBarTabBarViewOutput.swift
//  ComicRating
//
//  Created by Adriana Pineda on 25/06/2020.
//  Copyright © 2020 Adriana Pineda. All rights reserved.
//

@testable import ComicRating
import Cuckoo

class MockTabBarViewOutput: TabBarViewOutput, Cuckoo.ProtocolMock {
    typealias MocksType = TabBarViewOutput

    typealias Stubbing = __StubbingProxy_TabBarViewOutput
    typealias Verification = __VerificationProxy_TabBarViewOutput

    let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

    private var __defaultImplStub: TabBarViewOutput?

    func enableDefaultImplementation(_ stub: TabBarViewOutput) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }

    func viewIsReady() {
        return cuckoo_manager.call("viewIsReady()",
                                   parameters: (),
                                   escapingParameters: (),
                                   superclassCall:

                                   Cuckoo.MockManager.crashOnProtocolSuperclassCall(),

                                   defaultCall: __defaultImplStub!.viewIsReady())
    }

    struct __StubbingProxy_TabBarViewOutput: Cuckoo.StubbingProxy {
        private let cuckoo_manager: Cuckoo.MockManager

        init(manager: Cuckoo.MockManager) {
            cuckoo_manager = manager
        }

        func viewIsReady() -> Cuckoo.ProtocolStubNoReturnFunction<Void> {
            let matchers: [Cuckoo.ParameterMatcher<Void>] = []
            return .init(stub: cuckoo_manager.createStub(for: MockTabBarViewOutput.self, method: "viewIsReady()",
                                                         parameterMatchers: matchers))
        }
    }

    struct __VerificationProxy_TabBarViewOutput: Cuckoo.VerificationProxy {
        private let cuckoo_manager: Cuckoo.MockManager
        private let callMatcher: Cuckoo.CallMatcher
        private let sourceLocation: Cuckoo.SourceLocation

        init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
            cuckoo_manager = manager
            self.callMatcher = callMatcher
            self.sourceLocation = sourceLocation
        }

        @discardableResult
        func viewIsReady() -> Cuckoo.__DoNotUse<Void, Void> {
            let matchers: [Cuckoo.ParameterMatcher<Void>] = []
            return cuckoo_manager.verify("viewIsReady()", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
        }
    }
}

class TabBarViewOutputStub: TabBarViewOutput {
    func viewIsReady() {
        return DefaultValueRegistry.defaultValue(for: Void.self)
    }
}

// MARK: - Mocks generated from file: ComicRating/Services/Api/ComicApiService.swift at 2020-08-29 09:34:23 +0000

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
            let matchers: [Cuckoo.ParameterMatcher<(Int, (Comic?) -> Void)>] = [
                wrap(matchable: id) { $0.0 },
                wrap(matchable: completion) { $0.1 }
            ]
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
            let matchers: [Cuckoo.ParameterMatcher<(Int, (Comic?) -> Void)>] = [
                wrap(matchable: id) { $0.0 },
                wrap(matchable: completion) { $0.1 }
            ]
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

// MARK: - Mocks generated from file: ComicRating/Services/Api/ComicApiServiceInterface.swift at 2020-08-29 09:34:23 +0000

//
//  ComicApiClient.swift
//  ComicRating
//
//  Created by Adriana Pineda on 22/03/2020.
//  Copyright © 2020 Adriana Pineda. All rights reserved.
//

@testable import ComicRating
import Cuckoo

import PromiseKit
import UIKit

class MockComicApiServiceInterface: ComicApiServiceInterface, Cuckoo.ProtocolMock {
    typealias MocksType = ComicApiServiceInterface

    typealias Stubbing = __StubbingProxy_ComicApiServiceInterface
    typealias Verification = __VerificationProxy_ComicApiServiceInterface

    let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

    private var __defaultImplStub: ComicApiServiceInterface?

    func enableDefaultImplementation(_ stub: ComicApiServiceInterface) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }

    var baseUrl: String {
        get {
            return cuckoo_manager.getter("baseUrl",
                                         superclassCall:

                                         Cuckoo.MockManager.crashOnProtocolSuperclassCall(),

                                         defaultCall: __defaultImplStub!.baseUrl)
        }

        set {
            cuckoo_manager.setter("baseUrl",
                                  value: newValue,
                                  superclassCall:

                                  Cuckoo.MockManager.crashOnProtocolSuperclassCall(),

                                  defaultCall: __defaultImplStub!.baseUrl = newValue)
        }
    }

    func getComic(id: Int, completion: @escaping ((Comic?) -> Void)) {
        return cuckoo_manager.call("getComic(id: Int, completion: @escaping ((Comic?) -> Void))",
                                   parameters: (id, completion),
                                   escapingParameters: (id, completion),
                                   superclassCall:

                                   Cuckoo.MockManager.crashOnProtocolSuperclassCall(),

                                   defaultCall: __defaultImplStub!.getComic(id: id, completion: completion))
    }

    func getLastComic(completion: @escaping ((Comic?) -> Void)) {
        return cuckoo_manager.call("getLastComic(completion: @escaping ((Comic?) -> Void))",
                                   parameters: completion,
                                   escapingParameters: completion,
                                   superclassCall:

                                   Cuckoo.MockManager.crashOnProtocolSuperclassCall(),

                                   defaultCall: __defaultImplStub!.getLastComic(completion: completion))
    }

    func getComic(id: Int) -> Promise<Comic> {
        return cuckoo_manager.call("getComic(id: Int) -> Promise<Comic>",
                                   parameters: id,
                                   escapingParameters: id,
                                   superclassCall:

                                   Cuckoo.MockManager.crashOnProtocolSuperclassCall(),

                                   defaultCall: __defaultImplStub!.getComic(id: id))
    }

    func getLastComic() -> Promise<Comic> {
        return cuckoo_manager.call("getLastComic() -> Promise<Comic>",
                                   parameters: (),
                                   escapingParameters: (),
                                   superclassCall:

                                   Cuckoo.MockManager.crashOnProtocolSuperclassCall(),

                                   defaultCall: __defaultImplStub!.getLastComic())
    }

    struct __StubbingProxy_ComicApiServiceInterface: Cuckoo.StubbingProxy {
        private let cuckoo_manager: Cuckoo.MockManager

        init(manager: Cuckoo.MockManager) {
            cuckoo_manager = manager
        }

        var baseUrl: Cuckoo.ProtocolToBeStubbedProperty<MockComicApiServiceInterface, String> {
            return .init(manager: cuckoo_manager, name: "baseUrl")
        }

        func getComic<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable>(id: M1, completion: M2) -> Cuckoo.ProtocolStubNoReturnFunction<(Int,
                                                                                                                                 (Comic?) -> Void)> where M1.MatchedType == Int, M2.MatchedType == ((Comic?) -> Void) {
            let matchers: [Cuckoo.ParameterMatcher<(Int, (Comic?) -> Void)>] = [
                wrap(matchable: id) { $0.0 },
                wrap(matchable: completion) { $0.1 }
            ]
            return .init(stub: cuckoo_manager.createStub(for: MockComicApiServiceInterface.self,
                                                         method: "getComic(id: Int, completion: @escaping ((Comic?) -> Void))",
                                                         parameterMatchers: matchers))
        }

        func getLastComic<M1: Cuckoo.Matchable>(completion: M1) -> Cuckoo.ProtocolStubNoReturnFunction<(Comic?) -> Void> where M1.MatchedType == ((Comic?) -> Void) {
            let matchers: [Cuckoo.ParameterMatcher<(Comic?) -> Void>] = [wrap(matchable: completion) { $0 }]
            return .init(stub: cuckoo_manager.createStub(for: MockComicApiServiceInterface.self,
                                                         method: "getLastComic(completion: @escaping ((Comic?) -> Void))",
                                                         parameterMatchers: matchers))
        }

        func getComic<M1: Cuckoo.Matchable>(id: M1) -> Cuckoo.ProtocolStubFunction<Int, Promise<Comic>> where M1.MatchedType == Int {
            let matchers: [Cuckoo.ParameterMatcher<Int>] = [wrap(matchable: id) { $0 }]
            return .init(stub: cuckoo_manager.createStub(for: MockComicApiServiceInterface.self,
                                                         method: "getComic(id: Int) -> Promise<Comic>",
                                                         parameterMatchers: matchers))
        }

        func getLastComic() -> Cuckoo.ProtocolStubFunction<Void, Promise<Comic>> {
            let matchers: [Cuckoo.ParameterMatcher<Void>] = []
            return .init(stub: cuckoo_manager.createStub(for: MockComicApiServiceInterface.self,
                                                         method: "getLastComic() -> Promise<Comic>",
                                                         parameterMatchers: matchers))
        }
    }

    struct __VerificationProxy_ComicApiServiceInterface: Cuckoo.VerificationProxy {
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

        @discardableResult
        func getComic<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable>(id: M1, completion: M2) -> Cuckoo.__DoNotUse<(Int,
                                                                                                               (Comic?) -> Void), Void> where M1.MatchedType == Int, M2.MatchedType == ((Comic?) -> Void) {
            let matchers: [Cuckoo.ParameterMatcher<(Int, (Comic?) -> Void)>] = [
                wrap(matchable: id) { $0.0 },
                wrap(matchable: completion) { $0.1 }
            ]
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

class ComicApiServiceInterfaceStub: ComicApiServiceInterface {
    var baseUrl: String {
        get {
            return DefaultValueRegistry.defaultValue(for: String.self)
        }

        set {}
    }

    func getComic(id _: Int, completion _: @escaping ((Comic?) -> Void)) {
        return DefaultValueRegistry.defaultValue(for: Void.self)
    }

    func getLastComic(completion _: @escaping ((Comic?) -> Void)) {
        return DefaultValueRegistry.defaultValue(for: Void.self)
    }

    func getComic(id _: Int) -> Promise<Comic> {
        return DefaultValueRegistry.defaultValue(for: Promise<Comic>.self)
    }

    func getLastComic() -> Promise<Comic> {
        return DefaultValueRegistry.defaultValue(for: Promise<Comic>.self)
    }
}

// MARK: - Mocks generated from file: ComicRating/Services/Api/ImageDownloaderService.swift at 2020-08-29 09:34:23 +0000

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

// MARK: - Mocks generated from file: ComicRating/Services/Api/ImageDownloaderServiceInterface.swift at 2020-08-29 09:34:23 +0000

@testable import ComicRating
//
//  ImageDownloader.swift
//  ComicRating
//
//  Created by Adriana Pineda on 07/04/2020.
//  Copyright © 2020 Adriana Pineda. All rights reserved.
//
import Cuckoo

import Foundation
import PromiseKit

class MockImageDownloaderServiceInterface: ImageDownloaderServiceInterface, Cuckoo.ProtocolMock {
    typealias MocksType = ImageDownloaderServiceInterface

    typealias Stubbing = __StubbingProxy_ImageDownloaderServiceInterface
    typealias Verification = __VerificationProxy_ImageDownloaderServiceInterface

    let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

    private var __defaultImplStub: ImageDownloaderServiceInterface?

    func enableDefaultImplementation(_ stub: ImageDownloaderServiceInterface) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }

    func fetchImage(fromUrl url: URL) -> Promise<Data> {
        return cuckoo_manager.call("fetchImage(fromUrl: URL) -> Promise<Data>",
                                   parameters: url,
                                   escapingParameters: url,
                                   superclassCall:

                                   Cuckoo.MockManager.crashOnProtocolSuperclassCall(),

                                   defaultCall: __defaultImplStub!.fetchImage(fromUrl: url))
    }

    struct __StubbingProxy_ImageDownloaderServiceInterface: Cuckoo.StubbingProxy {
        private let cuckoo_manager: Cuckoo.MockManager

        init(manager: Cuckoo.MockManager) {
            cuckoo_manager = manager
        }

        func fetchImage<M1: Cuckoo.Matchable>(fromUrl url: M1) -> Cuckoo.ProtocolStubFunction<URL, Promise<Data>> where M1.MatchedType == URL {
            let matchers: [Cuckoo.ParameterMatcher<URL>] = [wrap(matchable: url) { $0 }]
            return .init(stub: cuckoo_manager.createStub(for: MockImageDownloaderServiceInterface.self,
                                                         method: "fetchImage(fromUrl: URL) -> Promise<Data>",
                                                         parameterMatchers: matchers))
        }
    }

    struct __VerificationProxy_ImageDownloaderServiceInterface: Cuckoo.VerificationProxy {
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

class ImageDownloaderServiceInterfaceStub: ImageDownloaderServiceInterface {
    func fetchImage(fromUrl _: URL) -> Promise<Data> {
        return DefaultValueRegistry.defaultValue(for: Promise<Data>.self)
    }
}

// MARK: - Mocks generated from file: ComicRating/Services/Storage/ComicStorageService.swift at 2020-08-29 09:34:23 +0000

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

// MARK: - Mocks generated from file: ComicRating/Services/Storage/ComicStorageServiceInterface.swift at 2020-08-29 09:34:23 +0000

//
//  ComicStorageServiceInterface.swift
//  ComicRating
//
//  Created by Adriana Pineda on 16/04/2020.
//  Copyright © 2020 Adriana Pineda. All rights reserved.
//

@testable import ComicRating
import Cuckoo

class MockComicStorageServiceInterface: ComicStorageServiceInterface, Cuckoo.ProtocolMock {
    typealias MocksType = ComicStorageServiceInterface

    typealias Stubbing = __StubbingProxy_ComicStorageServiceInterface
    typealias Verification = __VerificationProxy_ComicStorageServiceInterface

    let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

    private var __defaultImplStub: ComicStorageServiceInterface?

    func enableDefaultImplementation(_ stub: ComicStorageServiceInterface) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }

    func upsertComic(comic: Comic) {
        return cuckoo_manager.call("upsertComic(comic: Comic)",
                                   parameters: comic,
                                   escapingParameters: comic,
                                   superclassCall:

                                   Cuckoo.MockManager.crashOnProtocolSuperclassCall(),

                                   defaultCall: __defaultImplStub!.upsertComic(comic: comic))
    }

    func getComics() -> [Comic] {
        return cuckoo_manager.call("getComics() -> [Comic]",
                                   parameters: (),
                                   escapingParameters: (),
                                   superclassCall:

                                   Cuckoo.MockManager.crashOnProtocolSuperclassCall(),

                                   defaultCall: __defaultImplStub!.getComics())
    }

    struct __StubbingProxy_ComicStorageServiceInterface: Cuckoo.StubbingProxy {
        private let cuckoo_manager: Cuckoo.MockManager

        init(manager: Cuckoo.MockManager) {
            cuckoo_manager = manager
        }

        func upsertComic<M1: Cuckoo.Matchable>(comic: M1) -> Cuckoo.ProtocolStubNoReturnFunction<Comic> where M1.MatchedType == Comic {
            let matchers: [Cuckoo.ParameterMatcher<Comic>] = [wrap(matchable: comic) { $0 }]
            return .init(stub: cuckoo_manager.createStub(for: MockComicStorageServiceInterface.self,
                                                         method: "upsertComic(comic: Comic)",
                                                         parameterMatchers: matchers))
        }

        func getComics() -> Cuckoo.ProtocolStubFunction<Void, [Comic]> {
            let matchers: [Cuckoo.ParameterMatcher<Void>] = []
            return .init(stub: cuckoo_manager.createStub(for: MockComicStorageServiceInterface.self,
                                                         method: "getComics() -> [Comic]", parameterMatchers: matchers))
        }
    }

    struct __VerificationProxy_ComicStorageServiceInterface: Cuckoo.VerificationProxy {
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

class ComicStorageServiceInterfaceStub: ComicStorageServiceInterface {
    func upsertComic(comic _: Comic) {
        return DefaultValueRegistry.defaultValue(for: Void.self)
    }

    func getComics() -> [Comic] {
        return DefaultValueRegistry.defaultValue(for: [Comic].self)
    }
}
