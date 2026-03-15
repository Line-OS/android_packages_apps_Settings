.class abstract Lcom/google/android/settings/aware/AwareGestureDialogPreference;
.super Lcom/google/android/settings/aware/AwareDialogPreferenceBase;
.source "AwareGestureDialogPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1, p2}, Lcom/google/android/settings/aware/AwareDialogPreferenceBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method abstract getDestination()Ljava/lang/String;
.end method

.method abstract getDialogDisabledMessage()I
.end method

.method abstract getGestureDialogMessage()I
.end method

.method abstract getGestureDialogTitle()I
.end method

.method abstract getSourceMetricsCategory()I
.end method

.method protected isAvailable()Z
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/google/android/settings/aware/AwareDialogPreferenceBase;->mHelper:Lcom/google/android/settings/aware/AwareHelper;

    invoke-virtual {p0}, Lcom/google/android/settings/aware/AwareHelper;->isGestureConfigurable()Z

    move-result p0

    return p0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 59
    new-instance p1, Lcom/android/settings/core/SubSettingLauncher;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class p2, Lcom/google/android/settings/aware/AwareSettings;

    .line 60
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p1

    .line 61
    invoke-virtual {p0}, Lcom/google/android/settings/aware/AwareGestureDialogPreference;->getSourceMetricsCategory()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    .line 62
    invoke-virtual {p0}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    return-void
.end method

.method protected onPrepareDialogBuilder(Landroidx/appcompat/app/AlertDialog$Builder;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 1

    .line 42
    invoke-super {p0, p1, p2}, Lcom/android/settingslib/CustomDialogPreferenceCompat;->onPrepareDialogBuilder(Landroidx/appcompat/app/AlertDialog$Builder;Landroid/content/DialogInterface$OnClickListener;)V

    .line 44
    iget-object p2, p0, Lcom/google/android/settings/aware/AwareDialogPreferenceBase;->mHelper:Lcom/google/android/settings/aware/AwareHelper;

    invoke-virtual {p2}, Lcom/google/android/settings/aware/AwareHelper;->isSupported()Z

    move-result p2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 45
    invoke-virtual {p0}, Lcom/google/android/settings/aware/AwareGestureDialogPreference;->getGestureDialogTitle()I

    move-result p2

    invoke-virtual {p1, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 46
    invoke-virtual {p0}, Lcom/google/android/settings/aware/AwareGestureDialogPreference;->getDialogDisabledMessage()I

    move-result p0

    invoke-virtual {p1, p0}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    const p0, 0x7f1206fe

    .line 47
    invoke-virtual {p1, p0, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    const-string p0, ""

    .line 48
    invoke-virtual {p1, p0, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    goto :goto_0

    .line 50
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/settings/aware/AwareGestureDialogPreference;->getGestureDialogTitle()I

    move-result p2

    invoke-virtual {p1, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 51
    invoke-virtual {p0}, Lcom/google/android/settings/aware/AwareGestureDialogPreference;->getGestureDialogMessage()I

    move-result p2

    invoke-virtual {p1, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    const p2, 0x7f1201ea

    .line 52
    invoke-virtual {p1, p2, p0}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    const p0, 0x7f1201ed

    .line 53
    invoke-virtual {p1, p0, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    :goto_0
    return-void
.end method

.method protected performEnabledClick()V
    .locals 2

    .line 33
    new-instance v0, Lcom/android/settings/core/SubSettingLauncher;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    .line 34
    invoke-virtual {p0}, Lcom/google/android/settings/aware/AwareGestureDialogPreference;->getDestination()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v0

    .line 35
    invoke-virtual {p0}, Lcom/google/android/settings/aware/AwareGestureDialogPreference;->getSourceMetricsCategory()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    .line 36
    invoke-virtual {p0}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    return-void
.end method
