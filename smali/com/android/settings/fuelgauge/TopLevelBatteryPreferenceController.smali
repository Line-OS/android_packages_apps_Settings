.class public Lcom/android/settings/fuelgauge/TopLevelBatteryPreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "TopLevelBatteryPreferenceController.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStart;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStop;


# instance fields
.field private final mBatteryBroadcastReceiver:Lcom/android/settings/fuelgauge/BatteryBroadcastReceiver;

.field private mBatteryInfo:Lcom/android/settings/fuelgauge/BatteryInfo;

.field private mPreference:Landroidx/preference/Preference;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 40
    new-instance p1, Lcom/android/settings/fuelgauge/BatteryBroadcastReceiver;

    iget-object p2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lcom/android/settings/fuelgauge/BatteryBroadcastReceiver;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/settings/fuelgauge/TopLevelBatteryPreferenceController;->mBatteryBroadcastReceiver:Lcom/android/settings/fuelgauge/BatteryBroadcastReceiver;

    .line 41
    iget-object p1, p0, Lcom/android/settings/fuelgauge/TopLevelBatteryPreferenceController;->mBatteryBroadcastReceiver:Lcom/android/settings/fuelgauge/BatteryBroadcastReceiver;

    new-instance p2, Lcom/android/settings/fuelgauge/-$$Lambda$TopLevelBatteryPreferenceController$8JSAEgfckSLQsOFfnNTF6D2Wbto;

    invoke-direct {p2, p0}, Lcom/android/settings/fuelgauge/-$$Lambda$TopLevelBatteryPreferenceController$8JSAEgfckSLQsOFfnNTF6D2Wbto;-><init>(Lcom/android/settings/fuelgauge/TopLevelBatteryPreferenceController;)V

    invoke-virtual {p1, p2}, Lcom/android/settings/fuelgauge/BatteryBroadcastReceiver;->setBatteryChangedListener(Lcom/android/settings/fuelgauge/BatteryBroadcastReceiver$OnBatteryChangedListener;)V

    return-void
.end method

.method static getDashboardLabel(Landroid/content/Context;Lcom/android/settings/fuelgauge/BatteryInfo;)Ljava/lang/CharSequence;
    .locals 5

    if-eqz p1, :cond_3

    if-nez p0, :cond_0

    goto :goto_1

    .line 82
    :cond_0
    invoke-static {}, Landroid/text/BidiFormatter;->getInstance()Landroid/text/BidiFormatter;

    move-result-object v0

    .line 83
    iget-boolean v1, p1, Lcom/android/settings/fuelgauge/BatteryInfo;->discharging:Z

    if-nez v1, :cond_1

    iget-object v1, p1, Lcom/android/settings/fuelgauge/BatteryInfo;->chargeLabel:Ljava/lang/CharSequence;

    if-eqz v1, :cond_1

    goto :goto_0

    .line 85
    :cond_1
    iget-object v1, p1, Lcom/android/settings/fuelgauge/BatteryInfo;->remainingLabel:Ljava/lang/CharSequence;

    if-nez v1, :cond_2

    .line 86
    iget-object v1, p1, Lcom/android/settings/fuelgauge/BatteryInfo;->batteryPercentString:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const v1, 0x7f120b4b

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 88
    iget-object v4, p1, Lcom/android/settings/fuelgauge/BatteryInfo;->batteryPercentString:Ljava/lang/String;

    .line 89
    invoke-virtual {v0, v4}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object p1, p1, Lcom/android/settings/fuelgauge/BatteryInfo;->remainingLabel:Ljava/lang/CharSequence;

    .line 90
    invoke-virtual {v0, p1}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    aput-object p1, v2, v3

    .line 88
    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_3
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 58
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 59
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/fuelgauge/TopLevelBatteryPreferenceController;->mPreference:Landroidx/preference/Preference;

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 1

    .line 51
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f05003c

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x3

    :goto_0
    return p0
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/settings/fuelgauge/TopLevelBatteryPreferenceController;->mBatteryInfo:Lcom/android/settings/fuelgauge/BatteryInfo;

    invoke-static {v0, p0}, Lcom/android/settings/fuelgauge/TopLevelBatteryPreferenceController;->getDashboardLabel(Landroid/content/Context;Lcom/android/settings/fuelgauge/BatteryInfo;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public synthetic lambda$new$0$TopLevelBatteryPreferenceController(Lcom/android/settings/fuelgauge/BatteryInfo;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/android/settings/fuelgauge/TopLevelBatteryPreferenceController;->mBatteryInfo:Lcom/android/settings/fuelgauge/BatteryInfo;

    .line 44
    iget-object p1, p0, Lcom/android/settings/fuelgauge/TopLevelBatteryPreferenceController;->mPreference:Landroidx/preference/Preference;

    invoke-virtual {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->updateState(Landroidx/preference/Preference;)V

    return-void
.end method

.method public synthetic lambda$new$1$TopLevelBatteryPreferenceController(I)V
    .locals 1

    .line 42
    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/android/settings/fuelgauge/-$$Lambda$TopLevelBatteryPreferenceController$sfaKl_Ba9LgHCHIeh29r_Q8XWZA;

    invoke-direct {v0, p0}, Lcom/android/settings/fuelgauge/-$$Lambda$TopLevelBatteryPreferenceController$sfaKl_Ba9LgHCHIeh29r_Q8XWZA;-><init>(Lcom/android/settings/fuelgauge/TopLevelBatteryPreferenceController;)V

    const/4 p0, 0x1

    invoke-static {p1, v0, p0}, Lcom/android/settings/fuelgauge/BatteryInfo;->getBatteryInfo(Landroid/content/Context;Lcom/android/settings/fuelgauge/BatteryInfo$Callback;Z)V

    return-void
.end method

.method public onStart()V
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/android/settings/fuelgauge/TopLevelBatteryPreferenceController;->mBatteryBroadcastReceiver:Lcom/android/settings/fuelgauge/BatteryBroadcastReceiver;

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/BatteryBroadcastReceiver;->register()V

    return-void
.end method

.method public onStop()V
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/android/settings/fuelgauge/TopLevelBatteryPreferenceController;->mBatteryBroadcastReceiver:Lcom/android/settings/fuelgauge/BatteryBroadcastReceiver;

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/BatteryBroadcastReceiver;->unRegister()V

    return-void
.end method
