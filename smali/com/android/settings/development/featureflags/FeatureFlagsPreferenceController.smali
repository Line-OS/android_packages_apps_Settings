.class public Lcom/android/settings/development/featureflags/FeatureFlagsPreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "FeatureFlagsPreferenceController.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStart;


# instance fields
.field private mGroup:Landroidx/preference/PreferenceGroup;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 48
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 49
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceGroup;

    iput-object p1, p0, Lcom/android/settings/development/featureflags/FeatureFlagsPreferenceController;->mGroup:Landroidx/preference/PreferenceGroup;

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 0

    .line 43
    sget-boolean p0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, 0x3

    :goto_0
    return p0
.end method

.method public synthetic lambda$onStart$0$FeatureFlagsPreferenceController(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 64
    iget-object p0, p0, Lcom/android/settings/development/featureflags/FeatureFlagsPreferenceController;->mGroup:Landroidx/preference/PreferenceGroup;

    new-instance v0, Lcom/android/settings/development/featureflags/FeatureFlagPreference;

    invoke-direct {v0, p1, p2}, Lcom/android/settings/development/featureflags/FeatureFlagPreference;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    return-void
.end method

.method public onStart()V
    .locals 3

    .line 54
    iget-object v0, p0, Lcom/android/settings/development/featureflags/FeatureFlagsPreferenceController;->mGroup:Landroidx/preference/PreferenceGroup;

    if-nez v0, :cond_0

    return-void

    .line 57
    :cond_0
    invoke-static {}, Landroid/util/FeatureFlagUtils;->getAllFeatureFlags()Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 61
    :cond_1
    iget-object v1, p0, Lcom/android/settings/development/featureflags/FeatureFlagsPreferenceController;->mGroup:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v1}, Landroidx/preference/PreferenceGroup;->removeAll()V

    .line 62
    iget-object v1, p0, Lcom/android/settings/development/featureflags/FeatureFlagsPreferenceController;->mGroup:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v1}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 63
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/Stream;->sorted()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v2, Lcom/android/settings/development/featureflags/-$$Lambda$FeatureFlagsPreferenceController$SxXhztB71MdduDnAdmSOcdrAAF4;

    invoke-direct {v2, p0, v1}, Lcom/android/settings/development/featureflags/-$$Lambda$FeatureFlagsPreferenceController$SxXhztB71MdduDnAdmSOcdrAAF4;-><init>(Lcom/android/settings/development/featureflags/FeatureFlagsPreferenceController;Landroid/content/Context;)V

    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method
