.class public Lcom/android/settings/development/featureflags/FeatureFlagFooterPreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "FeatureFlagFooterPreferenceController.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStart;


# instance fields
.field private mFooterMixin:Lcom/android/settingslib/widget/FooterPreferenceMixinCompat;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "feature_flag_footer_pref"

    .line 33
    invoke-direct {p0, p1, v0}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getAvailabilityStatus()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onStart()V
    .locals 1

    .line 47
    iget-object p0, p0, Lcom/android/settings/development/featureflags/FeatureFlagFooterPreferenceController;->mFooterMixin:Lcom/android/settingslib/widget/FooterPreferenceMixinCompat;

    invoke-virtual {p0}, Lcom/android/settingslib/widget/FooterPreferenceMixinCompat;->createFooterPreference()Lcom/android/settingslib/widget/FooterPreference;

    move-result-object p0

    const v0, 0x7f120681

    .line 48
    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setTitle(I)V

    return-void
.end method

.method public setFooterMixin(Lcom/android/settingslib/widget/FooterPreferenceMixinCompat;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/android/settings/development/featureflags/FeatureFlagFooterPreferenceController;->mFooterMixin:Lcom/android/settingslib/widget/FooterPreferenceMixinCompat;

    return-void
.end method
