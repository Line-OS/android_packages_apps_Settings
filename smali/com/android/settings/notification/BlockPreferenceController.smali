.class public Lcom/android/settings/notification/BlockPreferenceController;
.super Lcom/android/settings/notification/NotificationPreferenceController;
.source "BlockPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;
.implements Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;


# instance fields
.field private mImportanceListener:Lcom/android/settings/notification/NotificationSettingsBase$ImportanceListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/notification/NotificationSettingsBase$ImportanceListener;Lcom/android/settings/notification/NotificationBackend;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1, p3}, Lcom/android/settings/notification/NotificationPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/notification/NotificationBackend;)V

    .line 44
    iput-object p2, p0, Lcom/android/settings/notification/BlockPreferenceController;->mImportanceListener:Lcom/android/settings/notification/NotificationSettingsBase$ImportanceListener;

    return-void
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "block"

    return-object p0
.end method

.method public isAvailable()Z
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/android/settings/notification/NotificationPreferenceController;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 4

    const/4 p1, 0x1

    xor-int/2addr p2, p1

    .line 102
    iget-object v0, p0, Lcom/android/settings/notification/NotificationPreferenceController;->mChannel:Landroid/app/NotificationChannel;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    .line 103
    invoke-virtual {v0}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v0

    if-nez p2, :cond_0

    if-nez v0, :cond_3

    :cond_0
    if-eqz p2, :cond_1

    move v0, v1

    goto :goto_0

    .line 109
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationPreferenceController;->isDefaultChannel()Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, -0x3e8

    goto :goto_0

    :cond_2
    const/4 v0, 0x3

    .line 110
    :goto_0
    iget-object v2, p0, Lcom/android/settings/notification/NotificationPreferenceController;->mChannel:Landroid/app/NotificationChannel;

    invoke-virtual {v2, v0}, Landroid/app/NotificationChannel;->setImportance(I)V

    .line 111
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationPreferenceController;->saveChannel()V

    .line 113
    :cond_3
    iget-object v0, p0, Lcom/android/settings/notification/NotificationPreferenceController;->mBackend:Lcom/android/settings/notification/NotificationBackend;

    iget-object v2, p0, Lcom/android/settings/notification/NotificationPreferenceController;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget-object v3, v2, Lcom/android/settings/notification/NotificationBackend$AppRow;->pkg:Ljava/lang/String;

    iget v2, v2, Lcom/android/settings/notification/NotificationBackend$AppRow;->uid:I

    invoke-virtual {v0, v3, v2}, Lcom/android/settings/notification/NotificationBackend;->onlyHasDefaultChannel(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 114
    iget-object v0, p0, Lcom/android/settings/notification/NotificationPreferenceController;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget-boolean v2, v0, Lcom/android/settings/notification/NotificationBackend$AppRow;->banned:Z

    if-eq v2, p2, :cond_8

    .line 115
    iput-boolean p2, v0, Lcom/android/settings/notification/NotificationBackend$AppRow;->banned:Z

    .line 116
    iget-object v2, p0, Lcom/android/settings/notification/NotificationPreferenceController;->mBackend:Lcom/android/settings/notification/NotificationBackend;

    iget-object v3, v0, Lcom/android/settings/notification/NotificationBackend$AppRow;->pkg:Ljava/lang/String;

    iget v0, v0, Lcom/android/settings/notification/NotificationBackend$AppRow;->uid:I

    if-nez p2, :cond_4

    goto :goto_1

    :cond_4
    move p1, v1

    :goto_1
    invoke-virtual {v2, v3, v0, p1}, Lcom/android/settings/notification/NotificationBackend;->setNotificationsEnabledForPackage(Ljava/lang/String;IZ)Z

    goto :goto_3

    .line 119
    :cond_5
    iget-object v0, p0, Lcom/android/settings/notification/NotificationPreferenceController;->mChannelGroup:Landroid/app/NotificationChannelGroup;

    if-eqz v0, :cond_6

    .line 120
    invoke-virtual {v0, p2}, Landroid/app/NotificationChannelGroup;->setBlocked(Z)V

    .line 121
    iget-object p1, p0, Lcom/android/settings/notification/NotificationPreferenceController;->mBackend:Lcom/android/settings/notification/NotificationBackend;

    iget-object p2, p0, Lcom/android/settings/notification/NotificationPreferenceController;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget-object v0, p2, Lcom/android/settings/notification/NotificationBackend$AppRow;->pkg:Ljava/lang/String;

    iget p2, p2, Lcom/android/settings/notification/NotificationBackend$AppRow;->uid:I

    iget-object v1, p0, Lcom/android/settings/notification/NotificationPreferenceController;->mChannelGroup:Landroid/app/NotificationChannelGroup;

    invoke-virtual {p1, v0, p2, v1}, Lcom/android/settings/notification/NotificationBackend;->updateChannelGroup(Ljava/lang/String;ILandroid/app/NotificationChannelGroup;)V

    goto :goto_3

    .line 122
    :cond_6
    iget-object v0, p0, Lcom/android/settings/notification/NotificationPreferenceController;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    if-eqz v0, :cond_8

    .line 123
    iput-boolean p2, v0, Lcom/android/settings/notification/NotificationBackend$AppRow;->banned:Z

    .line 124
    iget-object v2, p0, Lcom/android/settings/notification/NotificationPreferenceController;->mBackend:Lcom/android/settings/notification/NotificationBackend;

    iget-object v3, v0, Lcom/android/settings/notification/NotificationBackend$AppRow;->pkg:Ljava/lang/String;

    iget v0, v0, Lcom/android/settings/notification/NotificationBackend$AppRow;->uid:I

    if-nez p2, :cond_7

    goto :goto_2

    :cond_7
    move p1, v1

    :goto_2
    invoke-virtual {v2, v3, v0, p1}, Lcom/android/settings/notification/NotificationBackend;->setNotificationsEnabledForPackage(Ljava/lang/String;IZ)Z

    .line 126
    :cond_8
    :goto_3
    iget-object p0, p0, Lcom/android/settings/notification/BlockPreferenceController;->mImportanceListener:Lcom/android/settings/notification/NotificationSettingsBase$ImportanceListener;

    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationSettingsBase$ImportanceListener;->onImportanceChanged()V

    return-void
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 3

    .line 61
    check-cast p1, Lcom/android/settingslib/widget/LayoutPreference;

    const/4 v0, 0x0

    .line 62
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSelectable(Z)V

    const v1, 0x7f0a044a

    .line 63
    invoke-virtual {p1, v1}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/settings/widget/SwitchBar;

    if-eqz p1, :cond_8

    const v1, 0x7f120ad2

    .line 65
    invoke-virtual {p1, v1, v1}, Lcom/android/settings/widget/SwitchBar;->setSwitchBarText(II)V

    .line 67
    invoke-virtual {p1}, Lcom/android/settings/widget/SwitchBar;->show()V

    .line 69
    :try_start_0
    invoke-virtual {p1, p0}, Lcom/android/settings/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    :catch_0
    iget-object v1, p0, Lcom/android/settings/notification/NotificationPreferenceController;->mAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    invoke-virtual {p1, v1}, Lcom/android/settings/widget/SwitchBar;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    .line 75
    iget-object v1, p0, Lcom/android/settings/notification/NotificationPreferenceController;->mChannel:Landroid/app/NotificationChannel;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationPreferenceController;->isChannelBlockable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 76
    invoke-virtual {p1, v0}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    .line 79
    :cond_0
    iget-object v1, p0, Lcom/android/settings/notification/NotificationPreferenceController;->mChannelGroup:Landroid/app/NotificationChannelGroup;

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationPreferenceController;->isChannelGroupBlockable()Z

    move-result v1

    if-nez v1, :cond_1

    .line 80
    invoke-virtual {p1, v0}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    .line 83
    :cond_1
    iget-object v1, p0, Lcom/android/settings/notification/NotificationPreferenceController;->mChannel:Landroid/app/NotificationChannel;

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/settings/notification/NotificationPreferenceController;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget-boolean v2, v1, Lcom/android/settings/notification/NotificationBackend$AppRow;->systemApp:Z

    if-eqz v2, :cond_3

    iget-boolean v2, v1, Lcom/android/settings/notification/NotificationBackend$AppRow;->banned:Z

    if-eqz v2, :cond_2

    iget-boolean v1, v1, Lcom/android/settings/notification/NotificationBackend$AppRow;->lockedImportance:Z

    if-eqz v1, :cond_3

    .line 85
    :cond_2
    invoke-virtual {p1, v0}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    .line 88
    :cond_3
    iget-object v1, p0, Lcom/android/settings/notification/NotificationPreferenceController;->mChannel:Landroid/app/NotificationChannel;

    const/4 v2, 0x1

    if-eqz v1, :cond_5

    .line 89
    iget-object p0, p0, Lcom/android/settings/notification/NotificationPreferenceController;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget-boolean p0, p0, Lcom/android/settings/notification/NotificationBackend$AppRow;->banned:Z

    if-nez p0, :cond_4

    .line 90
    invoke-virtual {v1}, Landroid/app/NotificationChannel;->getImportance()I

    move-result p0

    if-eqz p0, :cond_4

    move v0, v2

    .line 89
    :cond_4
    invoke-virtual {p1, v0}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    goto :goto_0

    .line 91
    :cond_5
    iget-object v1, p0, Lcom/android/settings/notification/NotificationPreferenceController;->mChannelGroup:Landroid/app/NotificationChannelGroup;

    if-eqz v1, :cond_7

    .line 92
    iget-object p0, p0, Lcom/android/settings/notification/NotificationPreferenceController;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget-boolean p0, p0, Lcom/android/settings/notification/NotificationBackend$AppRow;->banned:Z

    if-nez p0, :cond_6

    invoke-virtual {v1}, Landroid/app/NotificationChannelGroup;->isBlocked()Z

    move-result p0

    if-nez p0, :cond_6

    move v0, v2

    :cond_6
    invoke-virtual {p1, v0}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    goto :goto_0

    .line 94
    :cond_7
    iget-object p0, p0, Lcom/android/settings/notification/NotificationPreferenceController;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget-boolean p0, p0, Lcom/android/settings/notification/NotificationBackend$AppRow;->banned:Z

    xor-int/2addr p0, v2

    invoke-virtual {p1, p0}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    :cond_8
    :goto_0
    return-void
.end method
