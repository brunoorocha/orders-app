import ProjectDescription

let nameAttribute: Template.Attribute = .required("name")

let featuresRootPath = "./Features/\(nameAttribute)"

let template = Template(
    description: "Custom feature template",
    attributes: [
        nameAttribute,
        .optional("platform", default: "ios"),
    ],
    items: [
        .file(
            path: featuresRootPath + "/Project.swift",
            templatePath: "/Files/Project.stencil"
        ),
        
        // App Demo
        .file(
            path: featuresRootPath + "/AppDemo/Config/Info.plist",
            templatePath: "/Files/AppDemoInfo.plist"
        ),
        .file(
            path: featuresRootPath + "/AppDemo/Resources/Assets.xcassets",
            templatePath: "/Files/Assets.xcassets"
        ),
        .file(
            path: featuresRootPath + "/AppDemo/Resources/Localizable.strings",
            templatePath: "/Files/Localizable.stencil"
        ),
        .directory(
            path: featuresRootPath + "/AppDemo/Resources",
            sourcePath: "Preview Content"
        ),

    ]
)
