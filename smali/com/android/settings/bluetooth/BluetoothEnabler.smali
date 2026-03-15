.class public final Lcom/android/settings/bluetooth/BluetoothEnabler;
.super Ljava/lang/Object;
.source "BluetoothEnabler.java"

# interfaces
.implements Lcom/android/settings/widget/SwitchWidgetController$OnSwitchChangeListener;


# instance fields
.field private final mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mCallback:Lcom/android/settings/widget/SwitchWidgetController$OnSwitchChangeListener;

.field private mContext:Landroid/content/Context;

.field private final mIntentFilter:Landroid/content/IntentFilter;

.field private final mMetricsEvent:I

.field private final mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private final mRestrictionUtils:Lcom/android/settings/bluetooth/RestrictionUtils;

.field private final mSwitchController:Lcom/android/settings/widget/SwitchWidgetController;

.field private mValidListener:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/widget/SwitchWidgetController;Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;ILcom/android/settings/bluetooth/RestrictionUtils;)V
    .locals 1

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Lcom/android/settings/bluetooth/BluetoothEnabler$1;

    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/BluetoothEnabler$1;-><init>(Lcom/android/settings/bluetooth/BluetoothEnabler;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 74
    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mContext:Landroid/content/Context;

    .line 75
    iput-object p3, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    .line 76
    iput-object p2, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mSwitchController:Lcom/android/settings/widget/SwitchWidgetController;

    .line 77
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mSwitchController:Lcom/android/settings/widget/SwitchWidgetController;

    invoke-virtual {p1, p0}, Lcom/android/settings/widget/SwitchWidgetController;->setListener(Lcom/android/settings/widget/SwitchWidgetController$OnSwitchChangeListener;)V

    const/4 p1, 0x0

    .line 78
    iput-boolean p1, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mValidListener:Z

    .line 79
    iput p4, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mMetricsEvent:I

    .line 81
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 82
    iget-object p2, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez p2, :cond_0

    .line 84
    iget-object p2, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mSwitchController:Lcom/android/settings/widget/SwitchWidgetController;

    invoke-virtual {p2, p1}, Lcom/android/settings/widget/SwitchWidgetController;->setEnabled(Z)V

    .line 86
    :cond_0
    new-instance p1, Landroid/content/IntentFilter;

    const-string p2, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-direct {p1, p2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    .line 87
    iput-object p5, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mRestrictionUtils:Lcom/android/settings/bluetooth/RestrictionUtils;

    return-void
.end method

.method public static getEnforcedAdmin(Lcom/android/settings/bluetooth/RestrictionUtils;Landroid/content/Context;)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;
    .locals 1

    const-string v0, "no_bluetooth"

    .line 231
    invoke-virtual {p0, p1, v0}, Lcom/android/settings/bluetooth/RestrictionUtils;->checkIfRestrictionEnforced(Landroid/content/Context;Ljava/lang/String;)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "no_config_bluetooth"

    .line 234
    invoke-virtual {p0, p1, v0}, Lcom/android/settings/bluetooth/RestrictionUtils;->checkIfRestrictionEnforced(Landroid/content/Context;Ljava/lang/String;)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private setBluetoothEnabled(Z)Z
    .locals 0

    .line 249
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    move-result p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    move-result p0

    :goto_0
    return p0
.end method

.method private setChecked(Z)V
    .locals 1

    .line 154
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mSwitchController:Lcom/android/settings/widget/SwitchWidgetController;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchWidgetController;->isChecked()Z

    move-result v0

    if-eq p1, v0, :cond_1

    .line 157
    iget-boolean v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mValidListener:Z

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mSwitchController:Lcom/android/settings/widget/SwitchWidgetController;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchWidgetController;->stopListening()V

    .line 160
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mSwitchController:Lcom/android/settings/widget/SwitchWidgetController;

    invoke-virtual {v0, p1}, Lcom/android/settings/widget/SwitchWidgetController;->setChecked(Z)V

    .line 161
    iget-boolean p1, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mValidListener:Z

    if-eqz p1, :cond_1

    .line 162
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mSwitchController:Lcom/android/settings/widget/SwitchWidgetController;

    invoke-virtual {p0}, Lcom/android/settings/widget/SwitchWidgetController;->startListening()V

    :cond_1
    return-void
.end method

.method private triggerParentPreferenceCallback(Z)V
    .locals 0

    .line 243
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mCallback:Lcom/android/settings/widget/SwitchWidgetController$OnSwitchChangeListener;

    if-eqz p0, :cond_0

    .line 244
    invoke-interface {p0, p1}, Lcom/android/settings/widget/SwitchWidgetController$OnSwitchChangeListener;->onSwitchToggled(Z)Z

    :cond_0
    return-void
.end method


# virtual methods
.method handleStateChanged(I)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    .line 148
    invoke-direct {p0, v1}, Lcom/android/settings/bluetooth/BluetoothEnabler;->setChecked(Z)V

    .line 149
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mSwitchController:Lcom/android/settings/widget/SwitchWidgetController;

    invoke-virtual {p0, v0}, Lcom/android/settings/widget/SwitchWidgetController;->setEnabled(Z)V

    goto :goto_0

    .line 141
    :pswitch_0
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mSwitchController:Lcom/android/settings/widget/SwitchWidgetController;

    invoke-virtual {p0, v1}, Lcom/android/settings/widget/SwitchWidgetController;->setEnabled(Z)V

    goto :goto_0

    .line 137
    :pswitch_1
    invoke-direct {p0, v0}, Lcom/android/settings/bluetooth/BluetoothEnabler;->setChecked(Z)V

    .line 138
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mSwitchController:Lcom/android/settings/widget/SwitchWidgetController;

    invoke-virtual {p0, v0}, Lcom/android/settings/widget/SwitchWidgetController;->setEnabled(Z)V

    goto :goto_0

    .line 134
    :pswitch_2
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mSwitchController:Lcom/android/settings/widget/SwitchWidgetController;

    invoke-virtual {p0, v1}, Lcom/android/settings/widget/SwitchWidgetController;->setEnabled(Z)V

    goto :goto_0

    .line 144
    :pswitch_3
    invoke-direct {p0, v1}, Lcom/android/settings/bluetooth/BluetoothEnabler;->setChecked(Z)V

    .line 145
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mSwitchController:Lcom/android/settings/widget/SwitchWidgetController;

    invoke-virtual {p0, v0}, Lcom/android/settings/widget/SwitchWidgetController;->setEnabled(Z)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method maybeEnforceRestrictions()Z
    .locals 3

    .line 220
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mRestrictionUtils:Lcom/android/settings/bluetooth/RestrictionUtils;

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/android/settings/bluetooth/BluetoothEnabler;->getEnforcedAdmin(Lcom/android/settings/bluetooth/RestrictionUtils;Landroid/content/Context;)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    .line 221
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mSwitchController:Lcom/android/settings/widget/SwitchWidgetController;

    invoke-virtual {v1, v0}, Lcom/android/settings/widget/SwitchWidgetController;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 223
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mSwitchController:Lcom/android/settings/widget/SwitchWidgetController;

    invoke-virtual {v2, v1}, Lcom/android/settings/widget/SwitchWidgetController;->setChecked(Z)V

    .line 224
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mSwitchController:Lcom/android/settings/widget/SwitchWidgetController;

    invoke-virtual {p0, v1}, Lcom/android/settings/widget/SwitchWidgetController;->setEnabled(Z)V

    :cond_0
    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public onSwitchToggled(Z)Z
    .locals 5

    .line 169
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothEnabler;->maybeEnforceRestrictions()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 170
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/BluetoothEnabler;->triggerParentPreferenceCallback(Z)V

    return v1

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 175
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mContext:Landroid/content/Context;

    const-string v3, "bluetooth"

    .line 176
    invoke-static {v2, v3}, Lcom/android/settingslib/WirelessUtils;->isRadioAllowed(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 177
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mContext:Landroid/content/Context;

    const v1, 0x7f121191

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 179
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mSwitchController:Lcom/android/settings/widget/SwitchWidgetController;

    invoke-virtual {p1, v0}, Lcom/android/settings/widget/SwitchWidgetController;->setChecked(Z)V

    .line 180
    invoke-direct {p0, v0}, Lcom/android/settings/bluetooth/BluetoothEnabler;->triggerParentPreferenceCallback(Z)V

    return v0

    .line 184
    :cond_1
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mContext:Landroid/content/Context;

    iget v4, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mMetricsEvent:I

    invoke-virtual {v2, v3, v4, p1}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;IZ)V

    .line 186
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v2, :cond_2

    .line 187
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/BluetoothEnabler;->setBluetoothEnabled(Z)Z

    move-result v2

    if-eqz p1, :cond_2

    if-nez v2, :cond_2

    .line 192
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mSwitchController:Lcom/android/settings/widget/SwitchWidgetController;

    invoke-virtual {p1, v0}, Lcom/android/settings/widget/SwitchWidgetController;->setChecked(Z)V

    .line 193
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mSwitchController:Lcom/android/settings/widget/SwitchWidgetController;

    invoke-virtual {p1, v1}, Lcom/android/settings/widget/SwitchWidgetController;->setEnabled(Z)V

    .line 194
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mSwitchController:Lcom/android/settings/widget/SwitchWidgetController;

    invoke-virtual {p1, v0}, Lcom/android/settings/widget/SwitchWidgetController;->updateTitle(Z)V

    .line 195
    invoke-direct {p0, v0}, Lcom/android/settings/bluetooth/BluetoothEnabler;->triggerParentPreferenceCallback(Z)V

    return v0

    .line 199
    :cond_2
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mSwitchController:Lcom/android/settings/widget/SwitchWidgetController;

    invoke-virtual {v2, v0}, Lcom/android/settings/widget/SwitchWidgetController;->setEnabled(Z)V

    .line 200
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/BluetoothEnabler;->triggerParentPreferenceCallback(Z)V

    return v1
.end method

.method public pause()V
    .locals 2

    .line 121
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v0, :cond_0

    return-void

    .line 124
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mValidListener:Z

    if-eqz v0, :cond_1

    .line 125
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mSwitchController:Lcom/android/settings/widget/SwitchWidgetController;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchWidgetController;->stopListening()V

    .line 126
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    .line 127
    iput-boolean v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mValidListener:Z

    :cond_1
    return-void
.end method

.method public resume(Landroid/content/Context;)V
    .locals 2

    .line 99
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mContext:Landroid/content/Context;

    if-eq v0, p1, :cond_0

    .line 100
    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mContext:Landroid/content/Context;

    .line 103
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothEnabler;->maybeEnforceRestrictions()Z

    move-result p1

    .line 105
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v0, :cond_1

    .line 106
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mSwitchController:Lcom/android/settings/widget/SwitchWidgetController;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/settings/widget/SwitchWidgetController;->setEnabled(Z)V

    return-void

    :cond_1
    if-nez p1, :cond_2

    .line 112
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/BluetoothEnabler;->handleStateChanged(I)V

    .line 115
    :cond_2
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mSwitchController:Lcom/android/settings/widget/SwitchWidgetController;

    invoke-virtual {p1}, Lcom/android/settings/widget/SwitchWidgetController;->startListening()V

    .line 116
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 p1, 0x1

    .line 117
    iput-boolean p1, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mValidListener:Z

    return-void
.end method

.method public setToggleCallback(Lcom/android/settings/widget/SwitchWidgetController$OnSwitchChangeListener;)V
    .locals 0

    .line 210
    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mCallback:Lcom/android/settings/widget/SwitchWidgetController$OnSwitchChangeListener;

    return-void
.end method
