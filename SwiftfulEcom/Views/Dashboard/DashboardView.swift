//
//  DashboardView.swift
//  SwiftfulEcom
//
//  Created by Khondakar Afridi on 11/30/23.
//

import SwiftUI

struct DashboardView: View {
    @State var currentTab: Tab = .Home
    @State var cartManager = CartManager()
    @Namespace var animation
    
    init() {
        UITabBar.appearance().isHidden = true
    }
    
    var body: some View {
        TabView(
            selection: $currentTab
        ){
            HomePageView()
            Text("Search")
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background()
                .tag(Tab.Search)
            Text("Notification")
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background()
                .tag(Tab.Notifications)
            CartView()
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background()
                .tag(Tab.Cart)
            ProfileView()
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background()
                .tag(Tab.Profile)
        }
        .environmentObject(cartManager)
        .overlay(
            HStack(spacing: 0){
                ForEach(
                    Tab.allCases,
                    id: \.rawValue
                ){
                    tab in
                    TabButton(
                        tab: tab
                    )
                }.padding(.vertical)
                    .padding(.bottom, getSafeArea().bottom == 0 ? 5 : (getSafeArea().bottom - 15))
                    .background(Color("kSecondary"))
            },
            alignment: .bottom
        )
        .ignoresSafeArea(.all, edges: .bottom)
    }
    func TabButton(tab: Tab) -> some View{
        GeometryReader{
            proxy in
            Button(action: {
                withAnimation(.spring()){
                    currentTab = tab
                }
            }, label: {
                VStack(spacing: 0){
                    Image(systemName: currentTab == tab ? tab.rawValue + ".fill" : tab.rawValue)
                        .resizable()
                        .foregroundColor(Color("kPrimary"))
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 20, height: 20)
                        .frame(maxWidth: .infinity)
                        .background(
                            ZStack{
                                if currentTab == tab {
                                    MaterialEffect(style: .light)
                                        .clipShape(Circle())
                                        .matchedGeometryEffect(id: "Tab", in: animation)
                                    
                                    Text(tab.Tabname)
                                        .foregroundColor(.primary)
                                        .font(.system(size: 10))
                                        .padding(.top, 50)
                                }
                            }
                        )
                        .contentShape(Rectangle())
                        .offset(y: currentTab == tab ?  -15 : 0)
                }
            })
        }
        .frame(height: 25)
    }
}

#Preview {
    DashboardView()
}


enum Tab: String, CaseIterable{
    case Home = "house"
    case Search = "magnifyingglass.circle"
    case Notifications = "bell"
    case Cart = "bag"
    case Profile = "person"
    
    var Tabname: String{
        switch self{
        case .Home:
            return "Home"
        case .Search:
            return "Search"
        case .Notifications:
            return "Notifications"
        case .Cart:
            return "Cart"
        case .Profile:
            return "Profile"
        }
    }
}

extension View {
    func getSafeArea() -> UIEdgeInsets{
        guard let screen = UIApplication.shared.connectedScenes.first as? UIWindowScene else {
            return .zero
        }
        guard let safeArea = screen.windows.first?.safeAreaInsets else {
            return .zero
        }
        return safeArea
    }
}

struct MaterialEffect: UIViewRepresentable {
    var style: UIBlurEffect.Style
    func makeUIView(
        context: Context
    ) -> UIVisualEffectView {
        let view = UIVisualEffectView(
            effect: UIBlurEffect(
                style: style
            )
        )
        return view
    }
    
    func updateUIView(
        _ uiView: UIVisualEffectView,
        context: Context
    ) {
        
    }
}
