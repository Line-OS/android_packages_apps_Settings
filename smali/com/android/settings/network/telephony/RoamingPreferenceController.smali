.class public Lcom/android/settings/network/telephony/RoamingPreferenceController;
.super Lcom/android/settings/network/telephony/TelephonyTogglePreferenceController;
.source "RoamingPreferenceController.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStart;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStop;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/network/telephony/RoamingPreferenceController$DataContentObserver;
    }
.end annotation


# static fields
.field private static final DIALOG_TAG:Ljava/lang/String; = "MobileDataDialog"


# instance fields
.field private mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

.field private mDataContentObserver:Lcom/android/settings/network/telephony/RoamingPreferenceController$DataContentObserver;

.field mFragmentManager:Landroidx/fragment/app/FragmentManager;

.field mNeedDialog:Z

.field private mSwitchPreference:Lcom/android/settingslib/RestrictedSwitchPreference;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 59
    invoke-direct {p0, p1, p2}, Lcom/android/settings/network/telephony/TelephonyTogglePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 60
    const-class p2, Landroid/telephony/CarrierConfigManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/CarrierConfigManager;

    iput-object p1, p0, Lcom/android/settings/network/telephony/RoamingPreferenceController;->mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

    .line 61
    new-instance p1, Lcom/android/settings/network/telephony/RoamingPreferenceController$DataContentObserver;

    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {p1, p0, p2}, Lcom/android/settings/network/telephony/RoamingPreferenceController$DataContentObserver;-><init>(Lcom/android/settings/network/telephony/RoamingPreferenceController;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/android/settings/network/telephony/RoamingPreferenceController;->mDataContentObserver:Lcom/android/settings/network/telephony/RoamingPreferenceController$DataContentObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/network/telephony/RoamingPreferenceController;)Lcom/android/settingslib/RestrictedSwitchPreference;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/android/settings/network/telephony/RoamingPreferenceController;->mSwitchPreference:Lcom/android/settingslib/RestrictedSwitchPreference;

    return-object p0
.end method

.method private showDialog()V
    .locals 2

    .line 148
    iget v0, p0, Lcom/android/settings/network/telephony/TelephonyTogglePreferenceController;->mSubId:I

    invoke-static {v0}, Lcom/android/settings/network/telephony/RoamingDialogFragment;->newInstance(I)Lcom/android/settings/network/telephony/RoamingDialogFragment;

    move-result-object v0

    .line 150
    iget-object p0, p0, Lcom/android/settings/network/telephony/RoamingPreferenceController;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    const-string v1, "MobileDataDialog"

    invoke-virtual {v0, p0, v1}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 76
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 77
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/RestrictedSwitchPreference;

    iput-object p1, p0, Lcom/android/settings/network/telephony/RoamingPreferenceController;->mSwitchPreference:Lcom/android/settingslib/RestrictedSwitchPreference;

    return-void
.end method

.method public getAvailabilityStatus(I)I
    .locals 0

    const/4 p0, -0x1

    if-eq p1, p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :goto_0
    return p0
.end method

.method public handlePreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 1

    .line 89
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 90
    iget-boolean p1, p0, Lcom/android/settings/network/telephony/RoamingPreferenceController;->mNeedDialog:Z

    if-eqz p1, :cond_0

    .line 91
    invoke-direct {p0}, Lcom/android/settings/network/telephony/RoamingPreferenceController;->showDialog()V

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public init(Landroidx/fragment/app/FragmentManager;I)V
    .locals 0

    .line 142
    iput-object p1, p0, Lcom/android/settings/network/telephony/RoamingPreferenceController;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 143
    iput p2, p0, Lcom/android/settings/network/telephony/TelephonyTogglePreferenceController;->mSubId:I

    .line 144
    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object p1

    iget p2, p0, Lcom/android/settings/network/telephony/TelephonyTogglePreferenceController;->mSubId:I

    invoke-virtual {p1, p2}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/network/telephony/RoamingPreferenceController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-void
.end method

.method public isChecked()Z
    .locals 0

    .line 138
    iget-object p0, p0, Lcom/android/settings/network/telephony/RoamingPreferenceController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->isDataRoamingEnabled()Z

    move-result p0

    return p0
.end method

.method isDialogNeeded()Z
    .locals 2

    .line 124
    iget-object v0, p0, Lcom/android/settings/network/telephony/RoamingPreferenceController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isDataRoamingEnabled()Z

    move-result v0

    .line 125
    iget-object v1, p0, Lcom/android/settings/network/telephony/RoamingPreferenceController;->mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

    iget p0, p0, Lcom/android/settings/network/telephony/TelephonyTogglePreferenceController;->mSubId:I

    invoke-virtual {v1, p0}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object p0

    if-nez v0, :cond_1

    if-eqz p0, :cond_0

    const-string v0, "disable_charge_indication_bool"

    .line 129
    invoke-virtual {p0, v0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public onStart()V
    .locals 2

    .line 66
    iget-object v0, p0, Lcom/android/settings/network/telephony/RoamingPreferenceController;->mDataContentObserver:Lcom/android/settings/network/telephony/RoamingPreferenceController$DataContentObserver;

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget p0, p0, Lcom/android/settings/network/telephony/TelephonyTogglePreferenceController;->mSubId:I

    invoke-virtual {v0, v1, p0}, Lcom/android/settings/network/telephony/RoamingPreferenceController$DataContentObserver;->register(Landroid/content/Context;I)V

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/android/settings/network/telephony/RoamingPreferenceController;->mDataContentObserver:Lcom/android/settings/network/telephony/RoamingPreferenceController$DataContentObserver;

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Lcom/android/settings/network/telephony/RoamingPreferenceController$DataContentObserver;->unRegister(Landroid/content/Context;)V

    return-void
.end method

.method public setChecked(Z)Z
    .locals 1

    .line 101
    invoke-virtual {p0}, Lcom/android/settings/network/telephony/RoamingPreferenceController;->isDialogNeeded()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/network/telephony/RoamingPreferenceController;->mNeedDialog:Z

    .line 103
    iget-boolean v0, p0, Lcom/android/settings/network/telephony/RoamingPreferenceController;->mNeedDialog:Z

    if-nez v0, :cond_0

    .line 105
    iget-object p0, p0, Lcom/android/settings/network/telephony/RoamingPreferenceController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {p0, p1}, Landroid/telephony/TelephonyManager;->setDataRoamingEnabled(Z)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 2

    .line 114
    invoke-super {p0, p1}, Lcom/android/settings/core/TogglePreferenceController;->updateState(Landroidx/preference/Preference;)V

    .line 115
    check-cast p1, Lcom/android/settingslib/RestrictedSwitchPreference;

    .line 116
    invoke-virtual {p1}, Lcom/android/settingslib/RestrictedSwitchPreference;->isDisabledByAdmin()Z

    move-result v0

    if-nez v0, :cond_1

    .line 117
    iget v0, p0, Lcom/android/settings/network/telephony/TelephonyTogglePreferenceController;->mSubId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Lcom/android/settingslib/RestrictedSwitchPreference;->setEnabled(Z)V

    .line 118
    invoke-virtual {p0}, Lcom/android/settings/network/telephony/RoamingPreferenceController;->isChecked()Z

    move-result p0

    invoke-virtual {p1, p0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :cond_1
    return-void
.end method
