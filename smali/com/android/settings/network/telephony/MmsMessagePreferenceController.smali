.class public Lcom/android/settings/network/telephony/MmsMessagePreferenceController;
.super Lcom/android/settings/network/telephony/TelephonyTogglePreferenceController;
.source "MmsMessagePreferenceController.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStart;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStop;


# instance fields
.field private mMobileDataContentObserver:Lcom/android/settings/network/MobileDataContentObserver;

.field private mPreference:Landroidx/preference/SwitchPreference;

.field private mSubscriptionManager:Landroid/telephony/SubscriptionManager;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 47
    invoke-direct {p0, p1, p2}, Lcom/android/settings/network/telephony/TelephonyTogglePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 48
    const-class p2, Landroid/telephony/SubscriptionManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/SubscriptionManager;

    iput-object p1, p0, Lcom/android/settings/network/telephony/MmsMessagePreferenceController;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 49
    new-instance p1, Lcom/android/settings/network/MobileDataContentObserver;

    new-instance p2, Landroid/os/Handler;

    .line 50
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {p1, p2}, Lcom/android/settings/network/MobileDataContentObserver;-><init>(Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/android/settings/network/telephony/MmsMessagePreferenceController;->mMobileDataContentObserver:Lcom/android/settings/network/MobileDataContentObserver;

    .line 51
    iget-object p1, p0, Lcom/android/settings/network/telephony/MmsMessagePreferenceController;->mMobileDataContentObserver:Lcom/android/settings/network/MobileDataContentObserver;

    new-instance p2, Lcom/android/settings/network/telephony/-$$Lambda$MmsMessagePreferenceController$2e1FtpwzBORCSFQhsMXLPB4Kqz0;

    invoke-direct {p2, p0}, Lcom/android/settings/network/telephony/-$$Lambda$MmsMessagePreferenceController$2e1FtpwzBORCSFQhsMXLPB4Kqz0;-><init>(Lcom/android/settings/network/telephony/MmsMessagePreferenceController;)V

    invoke-virtual {p1, p2}, Lcom/android/settings/network/MobileDataContentObserver;->setOnMobileDataChangedListener(Lcom/android/settings/network/MobileDataContentObserver$OnMobileDataChangedListener;)V

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 81
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 82
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/SwitchPreference;

    iput-object p1, p0, Lcom/android/settings/network/telephony/MmsMessagePreferenceController;->mPreference:Landroidx/preference/SwitchPreference;

    return-void
.end method

.method public getAvailabilityStatus(I)I
    .locals 2

    .line 56
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    .line 57
    invoke-static {p0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object p0

    const/4 v0, 0x2

    const/4 v1, -0x1

    if-eq p1, v1, :cond_0

    .line 59
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->isDataEnabled()Z

    move-result p1

    if-nez p1, :cond_0

    .line 60
    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->isApnMetered(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    :cond_0
    return v0
.end method

.method public init(I)V
    .locals 1

    .line 93
    iput p1, p0, Lcom/android/settings/network/telephony/TelephonyTogglePreferenceController;->mSubId:I

    .line 94
    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object p1

    iget v0, p0, Lcom/android/settings/network/telephony/TelephonyTogglePreferenceController;->mSubId:I

    invoke-virtual {p1, v0}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/network/telephony/MmsMessagePreferenceController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-void
.end method

.method public isChecked()Z
    .locals 1

    .line 104
    iget-object p0, p0, Lcom/android/settings/network/telephony/MmsMessagePreferenceController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->isDataEnabledForApn(I)Z

    move-result p0

    return p0
.end method

.method public synthetic lambda$new$0$MmsMessagePreferenceController()V
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/android/settings/network/telephony/MmsMessagePreferenceController;->mPreference:Landroidx/preference/SwitchPreference;

    invoke-virtual {p0, v0}, Lcom/android/settings/network/telephony/MmsMessagePreferenceController;->updateState(Landroidx/preference/Preference;)V

    return-void
.end method

.method public onStart()V
    .locals 2

    .line 67
    iget v0, p0, Lcom/android/settings/network/telephony/TelephonyTogglePreferenceController;->mSubId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 68
    iget-object v1, p0, Lcom/android/settings/network/telephony/MmsMessagePreferenceController;->mMobileDataContentObserver:Lcom/android/settings/network/MobileDataContentObserver;

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p0, v0}, Lcom/android/settings/network/MobileDataContentObserver;->register(Landroid/content/Context;I)V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 2

    .line 74
    iget v0, p0, Lcom/android/settings/network/telephony/TelephonyTogglePreferenceController;->mSubId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 75
    iget-object v0, p0, Lcom/android/settings/network/telephony/MmsMessagePreferenceController;->mMobileDataContentObserver:Lcom/android/settings/network/MobileDataContentObserver;

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Lcom/android/settings/network/MobileDataContentObserver;->unRegister(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public setChecked(Z)Z
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/android/settings/network/telephony/MmsMessagePreferenceController;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    iget p0, p0, Lcom/android/settings/network/telephony/TelephonyTogglePreferenceController;->mSubId:I

    invoke-virtual {v0, p0, p1}, Landroid/telephony/SubscriptionManager;->setAlwaysAllowMmsData(IZ)Z

    move-result p0

    return p0
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 1

    .line 87
    invoke-super {p0, p1}, Lcom/android/settings/core/TogglePreferenceController;->updateState(Landroidx/preference/Preference;)V

    .line 88
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->isAvailable()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 89
    check-cast p1, Landroidx/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings/network/telephony/MmsMessagePreferenceController;->isChecked()Z

    move-result p0

    invoke-virtual {p1, p0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    return-void
.end method
