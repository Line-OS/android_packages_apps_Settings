.class public Lcom/google/android/settings/aware/AwareDisplayPreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "AwareDisplayPreferenceController.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStart;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStop;
.implements Lcom/google/android/settings/aware/AwareHelper$Callback;


# static fields
.field private static final MY_USER:I

.field private static final PROP_AWARE_AVAILABLE:Ljava/lang/String; = "ro.vendor.aware_available"


# instance fields
.field private final mConfig:Landroid/hardware/display/AmbientDisplayConfiguration;

.field private final mHelper:Lcom/google/android/settings/aware/AwareHelper;

.field private mPreference:Landroidx/preference/Preference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 21
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    sput v0, Lcom/google/android/settings/aware/AwareDisplayPreferenceController;->MY_USER:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 31
    new-instance p2, Lcom/google/android/settings/aware/AwareHelper;

    invoke-direct {p2, p1}, Lcom/google/android/settings/aware/AwareHelper;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/google/android/settings/aware/AwareDisplayPreferenceController;->mHelper:Lcom/google/android/settings/aware/AwareHelper;

    .line 32
    new-instance p2, Landroid/hardware/display/AmbientDisplayConfiguration;

    invoke-direct {p2, p1}, Landroid/hardware/display/AmbientDisplayConfiguration;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/google/android/settings/aware/AwareDisplayPreferenceController;->mConfig:Landroid/hardware/display/AmbientDisplayConfiguration;

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 44
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 45
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/settings/aware/AwareDisplayPreferenceController;->mPreference:Landroidx/preference/Preference;

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 2

    .line 37
    iget-object p0, p0, Lcom/google/android/settings/aware/AwareDisplayPreferenceController;->mConfig:Landroid/hardware/display/AmbientDisplayConfiguration;

    invoke-virtual {p0}, Landroid/hardware/display/AmbientDisplayConfiguration;->alwaysOnAvailable()Z

    move-result p0

    const/4 v0, 0x0

    const-string v1, "ro.vendor.aware_available"

    .line 38
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez p0, :cond_1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    :cond_1
    :goto_0
    return v0
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 3

    .line 50
    iget-object v0, p0, Lcom/google/android/settings/aware/AwareDisplayPreferenceController;->mConfig:Landroid/hardware/display/AmbientDisplayConfiguration;

    sget v1, Lcom/google/android/settings/aware/AwareDisplayPreferenceController;->MY_USER:I

    invoke-virtual {v0, v1}, Landroid/hardware/display/AmbientDisplayConfiguration;->wakeDisplayGestureEnabled(I)Z

    move-result v0

    .line 51
    iget-object v1, p0, Lcom/google/android/settings/aware/AwareDisplayPreferenceController;->mConfig:Landroid/hardware/display/AmbientDisplayConfiguration;

    sget v2, Lcom/google/android/settings/aware/AwareDisplayPreferenceController;->MY_USER:I

    invoke-virtual {v1, v2}, Landroid/hardware/display/AmbientDisplayConfiguration;->alwaysOnEnabled(I)Z

    move-result v1

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/google/android/settings/aware/AwareDisplayPreferenceController;->mHelper:Lcom/google/android/settings/aware/AwareHelper;

    invoke-virtual {v0}, Lcom/google/android/settings/aware/AwareHelper;->isGestureConfigurable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const v0, 0x7f1201fb

    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    :cond_0
    if-eqz v1, :cond_1

    .line 56
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const v0, 0x7f1205ff

    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    .line 58
    :cond_1
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const v0, 0x7f120eef

    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public onChange(Landroid/net/Uri;)V
    .locals 0

    .line 74
    iget-object p1, p0, Lcom/google/android/settings/aware/AwareDisplayPreferenceController;->mPreference:Landroidx/preference/Preference;

    invoke-virtual {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->updateState(Landroidx/preference/Preference;)V

    return-void
.end method

.method public onStart()V
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/google/android/settings/aware/AwareDisplayPreferenceController;->mHelper:Lcom/google/android/settings/aware/AwareHelper;

    invoke-virtual {v0, p0}, Lcom/google/android/settings/aware/AwareHelper;->register(Lcom/google/android/settings/aware/AwareHelper$Callback;)V

    return-void
.end method

.method public onStop()V
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/google/android/settings/aware/AwareDisplayPreferenceController;->mHelper:Lcom/google/android/settings/aware/AwareHelper;

    invoke-virtual {p0}, Lcom/google/android/settings/aware/AwareHelper;->unregister()V

    return-void
.end method
