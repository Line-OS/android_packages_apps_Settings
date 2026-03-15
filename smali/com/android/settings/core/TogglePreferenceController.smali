.class public abstract Lcom/android/settings/core/TogglePreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "TogglePreferenceController.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "TogglePrefController"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getSliceType()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public abstract isChecked()Z
.end method

.method public final onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    .line 64
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/settings/core/TogglePreferenceController;->setChecked(Z)Z

    move-result p0

    return p0
.end method

.method public abstract setChecked(Z)Z
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 1

    .line 53
    instance-of v0, p1, Landroidx/preference/TwoStatePreference;

    if-eqz v0, :cond_0

    .line 54
    check-cast p1, Landroidx/preference/TwoStatePreference;

    invoke-virtual {p0}, Lcom/android/settings/core/TogglePreferenceController;->isChecked()Z

    move-result p0

    invoke-virtual {p1, p0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_0

    .line 55
    :cond_0
    instance-of v0, p1, Lcom/android/settings/widget/MasterSwitchPreference;

    if-eqz v0, :cond_1

    .line 56
    check-cast p1, Lcom/android/settings/widget/MasterSwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings/core/TogglePreferenceController;->isChecked()Z

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/settings/widget/MasterSwitchPreference;->setChecked(Z)V

    goto :goto_0

    .line 58
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->refreshSummary(Landroidx/preference/Preference;)V

    :goto_0
    return-void
.end method
