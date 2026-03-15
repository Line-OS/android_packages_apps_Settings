.class public Lcom/android/settings/network/telephony/MobileNetworkSettings;
.super Lcom/android/settings/dashboard/RestrictedDashboardFragment;
.source "MobileNetworkSettings.java"


# static fields
.field static final KEY_CLICKED_PREF:Ljava/lang/String; = "key_clicked_pref"

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# instance fields
.field private mCdmaSubscriptionPreferenceController:Lcom/android/settings/network/telephony/cdma/CdmaSubscriptionPreferenceController;

.field private mCdmaSystemSelectPreferenceController:Lcom/android/settings/network/telephony/cdma/CdmaSystemSelectPreferenceController;

.field private mClickedPrefKey:Ljava/lang/String;

.field private mSubId:I

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mUserManager:Landroid/os/UserManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 270
    new-instance v0, Lcom/android/settings/network/telephony/MobileNetworkSettings$1;

    invoke-direct {v0}, Lcom/android/settings/network/telephony/MobileNetworkSettings$1;-><init>()V

    sput-object v0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const-string v0, "no_config_mobile_networks"

    .line 82
    invoke-direct {p0, v0}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;-><init>(Ljava/lang/String;)V

    const/4 v0, -0x1

    .line 73
    iput v0, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mSubId:I

    return-void
.end method


# virtual methods
.method protected createPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation

    .line 118
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 119
    invoke-static {p1}, Lcom/android/settings/network/telephony/MobileNetworkUtils;->getSearchableSubscriptionId(Landroid/content/Context;)I

    move-result p1

    const-string v1, "android.provider.extra.SUB_ID"

    .line 118
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mSubId:I

    .line 121
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "settings_network_and_internet_v2"

    invoke-static {p1, v0}, Lcom/android/settings/development/featureflags/FeatureFlagPersistent;->isEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mSubId:I

    const/4 v1, -0x1

    if-eq p1, v1, :cond_0

    const/4 p1, 0x1

    new-array p1, p1, [Lcom/android/settingslib/core/AbstractPreferenceController;

    .line 123
    new-instance v1, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;

    .line 124
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v3

    iget v4, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mSubId:I

    invoke-direct {v1, v2, v3, p0, v4}, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;-><init>(Landroid/app/Activity;Lcom/android/settingslib/core/lifecycle/Lifecycle;Landroidx/preference/PreferenceFragmentCompat;I)V

    aput-object v1, p1, v0

    .line 123
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    new-array p0, v0, [Lcom/android/settingslib/core/AbstractPreferenceController;

    .line 127
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "NetworkSettings"

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x623

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 1

    .line 201
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "settings_network_and_internet_v2"

    invoke-static {p0, v0}, Lcom/android/settings/development/featureflags/FeatureFlagPersistent;->isEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const p0, 0x7f15006e

    return p0

    :cond_0
    const p0, 0x7f15006d

    return p0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    const/16 p3, 0x11

    if-eq p1, p3, :cond_1

    const/16 p2, 0x12

    if-eq p1, p2, :cond_0

    goto :goto_0

    .line 234
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 235
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_2

    .line 236
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    .line 225
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mClickedPrefKey:Ljava/lang/String;

    .line 226
    invoke-virtual {p1, p0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 228
    invoke-virtual {p0}, Landroidx/preference/Preference;->performClick()V

    :cond_2
    :goto_0
    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 3

    .line 132
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onAttach(Landroid/content/Context;)V

    .line 134
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "settings_network_and_internet_v2"

    invoke-static {p1, v0}, Lcom/android/settings/development/featureflags/FeatureFlagPersistent;->isEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 135
    const-class p1, Lcom/android/settings/network/telephony/CallsDefaultSubscriptionController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/android/settings/network/telephony/CallsDefaultSubscriptionController;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/settings/network/telephony/DefaultSubscriptionController;->init(Landroidx/lifecycle/Lifecycle;)V

    .line 136
    const-class p1, Lcom/android/settings/network/telephony/SmsDefaultSubscriptionController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/android/settings/network/telephony/SmsDefaultSubscriptionController;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/settings/network/telephony/DefaultSubscriptionController;->init(Landroidx/lifecycle/Lifecycle;)V

    .line 137
    const-class p1, Lcom/android/settings/network/telephony/MobileNetworkSwitchController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/android/settings/network/telephony/MobileNetworkSwitchController;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mSubId:I

    invoke-virtual {p1, v1, v2}, Lcom/android/settings/network/telephony/MobileNetworkSwitchController;->init(Landroidx/lifecycle/Lifecycle;I)V

    .line 138
    const-class p1, Lcom/android/settings/network/telephony/CarrierSettingsVersionPreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/android/settings/network/telephony/CarrierSettingsVersionPreferenceController;

    iget v1, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mSubId:I

    invoke-virtual {p1, v1}, Lcom/android/settings/network/telephony/CarrierSettingsVersionPreferenceController;->init(I)V

    .line 139
    const-class p1, Lcom/android/settings/datausage/BillingCyclePreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/android/settings/datausage/BillingCyclePreferenceController;

    iget v1, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mSubId:I

    invoke-virtual {p1, v1}, Lcom/android/settings/datausage/BillingCyclePreferenceController;->init(I)V

    .line 140
    const-class p1, Lcom/android/settings/network/telephony/MmsMessagePreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/android/settings/network/telephony/MmsMessagePreferenceController;

    iget v1, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mSubId:I

    invoke-virtual {p1, v1}, Lcom/android/settings/network/telephony/MmsMessagePreferenceController;->init(I)V

    .line 141
    const-class p1, Lcom/android/settings/network/telephony/DataDuringCallsPreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/android/settings/network/telephony/DataDuringCallsPreferenceController;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mSubId:I

    invoke-virtual {p1, v1, v2}, Lcom/android/settings/network/telephony/DataDuringCallsPreferenceController;->init(Landroidx/lifecycle/Lifecycle;I)V

    .line 142
    const-class p1, Lcom/android/settings/network/telephony/DisabledSubscriptionController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/android/settings/network/telephony/DisabledSubscriptionController;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mSubId:I

    invoke-virtual {p1, v1, v2}, Lcom/android/settings/network/telephony/DisabledSubscriptionController;->init(Landroidx/lifecycle/Lifecycle;I)V

    .line 143
    const-class p1, Lcom/android/settings/network/telephony/DeleteSimProfilePreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/android/settings/network/telephony/DeleteSimProfilePreferenceController;

    iget v1, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mSubId:I

    const/16 v2, 0x12

    invoke-virtual {p1, v1, p0, v2}, Lcom/android/settings/network/telephony/DeleteSimProfilePreferenceController;->init(ILandroidx/fragment/app/Fragment;I)V

    .line 145
    const-class p1, Lcom/android/settings/network/telephony/DisableSimFooterPreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/android/settings/network/telephony/DisableSimFooterPreferenceController;

    iget v1, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mSubId:I

    invoke-virtual {p1, v1}, Lcom/android/settings/network/telephony/DisableSimFooterPreferenceController;->init(I)V

    .line 147
    :cond_0
    const-class p1, Lcom/android/settings/network/telephony/MobileDataPreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/android/settings/network/telephony/MobileDataPreferenceController;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mSubId:I

    invoke-virtual {p1, v1, v2}, Lcom/android/settings/network/telephony/MobileDataPreferenceController;->init(Landroidx/fragment/app/FragmentManager;I)V

    .line 148
    const-class p1, Lcom/android/settings/network/telephony/RoamingPreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/android/settings/network/telephony/RoamingPreferenceController;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mSubId:I

    invoke-virtual {p1, v1, v2}, Lcom/android/settings/network/telephony/RoamingPreferenceController;->init(Landroidx/fragment/app/FragmentManager;I)V

    .line 149
    const-class p1, Lcom/android/settings/network/telephony/ApnPreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/android/settings/network/telephony/ApnPreferenceController;

    iget v1, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mSubId:I

    invoke-virtual {p1, v1}, Lcom/android/settings/network/telephony/ApnPreferenceController;->init(I)V

    .line 150
    const-class p1, Lcom/android/settings/network/telephony/CarrierPreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/android/settings/network/telephony/CarrierPreferenceController;

    iget v1, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mSubId:I

    invoke-virtual {p1, v1}, Lcom/android/settings/network/telephony/CarrierPreferenceController;->init(I)V

    .line 151
    const-class p1, Lcom/android/settings/network/telephony/DataUsagePreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/android/settings/network/telephony/DataUsagePreferenceController;

    iget v1, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mSubId:I

    invoke-virtual {p1, v1}, Lcom/android/settings/network/telephony/DataUsagePreferenceController;->init(I)V

    .line 152
    const-class p1, Lcom/android/settings/network/telephony/PreferredNetworkModePreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/android/settings/network/telephony/PreferredNetworkModePreferenceController;

    iget v1, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mSubId:I

    invoke-virtual {p1, v1}, Lcom/android/settings/network/telephony/PreferredNetworkModePreferenceController;->init(I)V

    .line 153
    const-class p1, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mSubId:I

    invoke-virtual {p1, v1, v2}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->init(Landroidx/lifecycle/Lifecycle;I)V

    .line 154
    const-class p1, Lcom/android/settings/network/telephony/DataServiceSetupPreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/android/settings/network/telephony/DataServiceSetupPreferenceController;

    iget v1, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mSubId:I

    invoke-virtual {p1, v1}, Lcom/android/settings/network/telephony/DataServiceSetupPreferenceController;->init(I)V

    .line 155
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/android/settings/development/featureflags/FeatureFlagPersistent;->isEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 156
    const-class p1, Lcom/android/settings/network/telephony/EuiccPreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/android/settings/network/telephony/EuiccPreferenceController;

    iget v0, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mSubId:I

    invoke-virtual {p1, v0}, Lcom/android/settings/network/telephony/EuiccPreferenceController;->init(I)V

    .line 158
    :cond_1
    const-class p1, Lcom/android/settings/network/telephony/WifiCallingPreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/android/settings/network/telephony/WifiCallingPreferenceController;

    iget v0, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mSubId:I

    invoke-virtual {p1, v0}, Lcom/android/settings/network/telephony/WifiCallingPreferenceController;->init(I)V

    .line 160
    const-class p1, Lcom/android/settings/network/telephony/gsm/OpenNetworkSelectPagePreferenceController;

    .line 161
    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/android/settings/network/telephony/gsm/OpenNetworkSelectPagePreferenceController;

    iget v0, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mSubId:I

    invoke-virtual {p1, v0}, Lcom/android/settings/network/telephony/gsm/OpenNetworkSelectPagePreferenceController;->init(I)Lcom/android/settings/network/telephony/gsm/OpenNetworkSelectPagePreferenceController;

    move-result-object p1

    .line 162
    const-class v0, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;

    .line 163
    invoke-virtual {p0, v0}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v0

    check-cast v0, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;

    iget v1, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mSubId:I

    .line 164
    invoke-virtual {v0, v1}, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->init(I)Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;

    move-result-object v0

    .line 165
    invoke-virtual {v0, p1}, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->addListener(Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController$OnNetworkSelectModeListener;)Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;

    move-result-object p1

    .line 166
    const-class v0, Lcom/android/settings/widget/PreferenceCategoryController;

    invoke-virtual {p0, v0}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v0

    check-cast v0, Lcom/android/settings/widget/PreferenceCategoryController;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/android/settingslib/core/AbstractPreferenceController;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 167
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 166
    invoke-virtual {v0, p1}, Lcom/android/settings/widget/PreferenceCategoryController;->setChildren(Ljava/util/List;)Lcom/android/settings/widget/PreferenceCategoryController;

    .line 169
    const-class p1, Lcom/android/settings/network/telephony/cdma/CdmaSystemSelectPreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/android/settings/network/telephony/cdma/CdmaSystemSelectPreferenceController;

    iput-object p1, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mCdmaSystemSelectPreferenceController:Lcom/android/settings/network/telephony/cdma/CdmaSystemSelectPreferenceController;

    .line 170
    iget-object p1, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mCdmaSystemSelectPreferenceController:Lcom/android/settings/network/telephony/cdma/CdmaSystemSelectPreferenceController;

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceManager()Landroidx/preference/PreferenceManager;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mSubId:I

    invoke-virtual {p1, v0, v1}, Lcom/android/settings/network/telephony/cdma/CdmaBasePreferenceController;->init(Landroidx/preference/PreferenceManager;I)V

    .line 171
    const-class p1, Lcom/android/settings/network/telephony/cdma/CdmaSubscriptionPreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/android/settings/network/telephony/cdma/CdmaSubscriptionPreferenceController;

    iput-object p1, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mCdmaSubscriptionPreferenceController:Lcom/android/settings/network/telephony/cdma/CdmaSubscriptionPreferenceController;

    .line 172
    iget-object p1, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mCdmaSubscriptionPreferenceController:Lcom/android/settings/network/telephony/cdma/CdmaSubscriptionPreferenceController;

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceManager()Landroidx/preference/PreferenceManager;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mSubId:I

    invoke-virtual {p1, v0, v1}, Lcom/android/settings/network/telephony/cdma/CdmaBasePreferenceController;->init(Landroidx/preference/PreferenceManager;I)V

    .line 174
    const-class p1, Lcom/android/settings/network/telephony/VideoCallingPreferenceController;

    .line 175
    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/android/settings/network/telephony/VideoCallingPreferenceController;

    iget v0, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mSubId:I

    invoke-virtual {p1, v0}, Lcom/android/settings/network/telephony/VideoCallingPreferenceController;->init(I)Lcom/android/settings/network/telephony/VideoCallingPreferenceController;

    move-result-object p1

    .line 176
    const-class v0, Lcom/android/settings/network/telephony/Enhanced4gLtePreferenceController;

    invoke-virtual {p0, v0}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v0

    check-cast v0, Lcom/android/settings/network/telephony/Enhanced4gLtePreferenceController;

    iget p0, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mSubId:I

    invoke-virtual {v0, p0}, Lcom/android/settings/network/telephony/Enhanced4gLtePreferenceController;->init(I)Lcom/android/settings/network/telephony/Enhanced4gLtePreferenceController;

    move-result-object p0

    .line 177
    invoke-virtual {p0, p1}, Lcom/android/settings/network/telephony/Enhanced4gLtePreferenceController;->addListener(Lcom/android/settings/network/telephony/Enhanced4gLtePreferenceController$On4gLteUpdateListener;)Lcom/android/settings/network/telephony/Enhanced4gLtePreferenceController;

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "NetworkSettings"

    const-string v1, "onCreate:+"

    .line 182
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->onCreate(Landroid/os/Bundle;)V

    .line 184
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "user"

    .line 186
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    iput-object v1, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mUserManager:Landroid/os/UserManager;

    .line 187
    invoke-static {v0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mSubId:I

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 189
    invoke-virtual {p0, p1}, Lcom/android/settings/network/telephony/MobileNetworkSettings;->onRestoreInstance(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3

    .line 247
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "settings_network_and_internet_v2"

    invoke-static {v0, v1}, Lcom/android/settings/development/featureflags/FeatureFlagPersistent;->isEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mSubId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const v0, 0x7f0a017c

    const v1, 0x7f1209cc

    const/4 v2, 0x0

    .line 249
    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x10804cc

    .line 251
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    const/4 v1, 0x2

    .line 252
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 254
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 259
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "settings_network_and_internet_v2"

    invoke-static {v0, v1}, Lcom/android/settings/development/featureflags/FeatureFlagPersistent;->isEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mSubId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 261
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0a017c

    if-ne v0, v1, :cond_0

    .line 262
    iget p1, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mSubId:I

    invoke-static {p1}, Lcom/android/settings/network/telephony/RenameMobileNetworkDialogFragment;->newInstance(I)Lcom/android/settings/network/telephony/RenameMobileNetworkDialogFragment;

    move-result-object p1

    .line 263
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    const-string v0, "RenameMobileNetwork"

    .line 262
    invoke-virtual {p1, p0, v0}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    .line 267
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method public onPreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 4

    .line 97
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onPreferenceTreeClick(Landroidx/preference/Preference;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 100
    :cond_0
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string v0, "cdma_system_select_key"

    .line 102
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "cdma_subscription_key"

    .line 103
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0

    .line 104
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getEmergencyCallbackMode()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 105
    new-instance v0, Landroid/content/Intent;

    const/4 v2, 0x0

    const-string v3, "com.android.internal.intent.action.ACTION_SHOW_NOTICE_ECM_BLOCK_OTHERS"

    invoke-direct {v0, v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/16 v2, 0x11

    invoke-virtual {p0, v0, v2}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 108
    iput-object p1, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mClickedPrefKey:Ljava/lang/String;

    :cond_3
    return v1
.end method

.method onRestoreInstance(Landroid/os/Bundle;)V
    .locals 1

    if-eqz p1, :cond_0

    const-string v0, "key_clicked_pref"

    .line 195
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mClickedPrefKey:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 215
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 216
    iget-object p0, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mClickedPrefKey:Ljava/lang/String;

    const-string v0, "key_clicked_pref"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
