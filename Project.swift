import ProjectDescription

let project = Project(
    name: "OrdersApp",
    targets: [
        .target(
            name: "OrdersApp",
            destinations: .iOS,
            product: .app,
            bundleId: "io.tuist.OrdersApp",
            infoPlist: .default,
            sources: ["OrdersApp/Sources/**"],
            resources: ["OrdersApp/Resources/**"],
            dependencies: []
        ),
        .target(
            name: "OrdersAppTests",
            destinations: .iOS,
            product: .unitTests,
            bundleId: "io.tuist.OrdersAppTests",
            infoPlist: .default,
            sources: ["OrdersApp/Tests/**"],
            resources: [],
            dependencies: [.target(name: "OrdersApp")]
        ),
    ]
)
