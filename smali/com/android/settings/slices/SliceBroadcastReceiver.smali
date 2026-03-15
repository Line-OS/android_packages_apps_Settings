.class public Lcom/android/settings/slices/SliceBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SliceBroadcastReceiver.java"


# static fields
.field private static TAG:Ljava/lang/String; = "SettSliceBroadcastRec"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 53
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private getPreferenceController(Landroid/content/Context;Ljava/lang/String;)Lcom/android/settings/core/BasePreferenceController;
    .locals 0

    .line 216
    new-instance p0, Lcom/android/settings/slices/SlicesDatabaseAccessor;

    invoke-direct {p0, p1}, Lcom/android/settings/slices/SlicesDatabaseAccessor;-><init>(Landroid/content/Context;)V

    .line 217
    invoke-virtual {p0, p2}, Lcom/android/settings/slices/SlicesDatabaseAccessor;->getSliceDataFromKey(Ljava/lang/String;)Lcom/android/settings/slices/SliceData;

    move-result-object p0

    .line 218
    invoke-static {p1, p0}, Lcom/android/settings/slices/SliceBuilderUtils;->getPreferenceController(Landroid/content/Context;Lcom/android/settings/slices/SliceData;)Lcom/android/settings/core/BasePreferenceController;

    move-result-object p0

    return-object p0
.end method

.method private handleCopyAction(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 4

    .line 181
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 185
    invoke-direct {p0, p1, p2}, Lcom/android/settings/slices/SliceBroadcastReceiver;->getPreferenceController(Landroid/content/Context;Ljava/lang/String;)Lcom/android/settings/core/BasePreferenceController;

    move-result-object v0

    .line 187
    instance-of v1, v0, Lcom/android/settings/slices/Sliceable;

    if-eqz v1, :cond_2

    .line 192
    invoke-virtual {v0}, Lcom/android/settings/core/BasePreferenceController;->isAvailable()Z

    move-result v1

    if-nez v1, :cond_1

    .line 193
    sget-object v1, Lcom/android/settings/slices/SliceBroadcastReceiver;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t update "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " since the setting is unavailable"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    invoke-interface {v0}, Lcom/android/settings/slices/Sliceable;->hasAsyncUpdate()Z

    move-result v0

    if-nez v0, :cond_0

    .line 195
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/slices/SliceBroadcastReceiver;->updateUri(Landroid/content/Context;Ljava/lang/String;Z)V

    :cond_0
    return-void

    .line 200
    :cond_1
    invoke-interface {v0}, Lcom/android/settings/slices/Sliceable;->copy()V

    return-void

    .line 188
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Copyable action passed for a non-copyable key:"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 182
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "No key passed to Intent for controller"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private handleSliderAction(Landroid/content/Context;Ljava/lang/String;IZ)V
    .locals 3

    .line 145
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, -0x1

    if-eq p3, v0, :cond_3

    .line 154
    invoke-direct {p0, p1, p2}, Lcom/android/settings/slices/SliceBroadcastReceiver;->getPreferenceController(Landroid/content/Context;Ljava/lang/String;)Lcom/android/settings/core/BasePreferenceController;

    move-result-object v0

    .line 156
    instance-of v1, v0, Lcom/android/settings/core/SliderPreferenceController;

    if-eqz v1, :cond_2

    .line 160
    invoke-virtual {v0}, Lcom/android/settings/core/BasePreferenceController;->isAvailable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 161
    sget-object p3, Lcom/android/settings/slices/SliceBroadcastReceiver;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Can\'t update "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " since the setting is unavailable"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    invoke-direct {p0, p1, p2, p4}, Lcom/android/settings/slices/SliceBroadcastReceiver;->updateUri(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void

    .line 166
    :cond_0
    check-cast v0, Lcom/android/settings/core/SliderPreferenceController;

    .line 167
    invoke-virtual {v0}, Lcom/android/settings/core/SliderPreferenceController;->getMin()I

    move-result v1

    .line 168
    invoke-virtual {v0}, Lcom/android/settings/core/SliderPreferenceController;->getMax()I

    move-result v2

    if-lt p3, v1, :cond_1

    if-gt p3, v2, :cond_1

    .line 175
    invoke-virtual {v0, p3}, Lcom/android/settings/core/SliderPreferenceController;->setSliderPosition(I)Z

    .line 176
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/slices/SliceBroadcastReceiver;->logSliceValueChange(Landroid/content/Context;Ljava/lang/String;I)V

    .line 177
    invoke-direct {p0, p1, p2, p4}, Lcom/android/settings/slices/SliceBroadcastReceiver;->updateUri(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void

    .line 170
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Invalid position passed to Slider controller. Expected between "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " and "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " but found "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 157
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Slider action passed for a non-slider key: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 151
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid position passed to Slider controller"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 146
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "No key passed to Intent for slider controller. Use extra: com.android.settings.slice.extra.key"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private handleToggleAction(Landroid/content/Context;Ljava/lang/String;ZZ)V
    .locals 3

    .line 115
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 119
    invoke-direct {p0, p1, p2}, Lcom/android/settings/slices/SliceBroadcastReceiver;->getPreferenceController(Landroid/content/Context;Ljava/lang/String;)Lcom/android/settings/core/BasePreferenceController;

    move-result-object v0

    .line 121
    instance-of v1, v0, Lcom/android/settings/core/TogglePreferenceController;

    if-eqz v1, :cond_3

    .line 125
    invoke-virtual {v0}, Lcom/android/settings/core/BasePreferenceController;->isAvailable()Z

    move-result v1

    if-nez v1, :cond_1

    .line 126
    sget-object p3, Lcom/android/settings/slices/SliceBroadcastReceiver;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t update "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " since the setting is unavailable"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    invoke-interface {v0}, Lcom/android/settings/slices/Sliceable;->hasAsyncUpdate()Z

    move-result p3

    if-nez p3, :cond_0

    .line 128
    invoke-direct {p0, p1, p2, p4}, Lcom/android/settings/slices/SliceBroadcastReceiver;->updateUri(Landroid/content/Context;Ljava/lang/String;Z)V

    :cond_0
    return-void

    .line 135
    :cond_1
    move-object v1, v0

    check-cast v1, Lcom/android/settings/core/TogglePreferenceController;

    .line 136
    invoke-virtual {v1, p3}, Lcom/android/settings/core/TogglePreferenceController;->setChecked(Z)Z

    .line 137
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/slices/SliceBroadcastReceiver;->logSliceValueChange(Landroid/content/Context;Ljava/lang/String;I)V

    .line 138
    invoke-interface {v0}, Lcom/android/settings/slices/Sliceable;->hasAsyncUpdate()Z

    move-result p3

    if-nez p3, :cond_2

    .line 139
    invoke-direct {p0, p1, p2, p4}, Lcom/android/settings/slices/SliceBroadcastReceiver;->updateUri(Landroid/content/Context;Ljava/lang/String;Z)V

    :cond_2
    return-void

    .line 122
    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Toggle action passed for a non-toggle key: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 116
    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "No key passed to Intent for toggle controller"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private logSliceValueChange(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 6

    .line 208
    invoke-static {p1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/settings/overlay/FeatureFactory;->getMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0x55c

    const/4 v3, 0x0

    move-object v4, p2

    move v5, p3

    .line 209
    invoke-virtual/range {v0 .. v5}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(IIILjava/lang/String;I)V

    return-void
.end method

.method private updateUri(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 1

    if-eqz p3, :cond_0

    const-string p0, "android.settings.slices"

    goto :goto_0

    :cond_0
    const-string p0, "com.android.settings.slices"

    .line 225
    :goto_0
    new-instance p3, Landroid/net/Uri$Builder;

    invoke-direct {p3}, Landroid/net/Uri$Builder;-><init>()V

    const-string v0, "content"

    .line 226
    invoke-virtual {p3, v0}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p3

    .line 227
    invoke-virtual {p3, p0}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    const-string p3, "action"

    .line 228
    invoke-virtual {p0, p3}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    .line 229
    invoke-virtual {p0, p2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    .line 230
    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    .line 231
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p0, p2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    .line 59
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.settings.slice.extra.key"

    .line 60
    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "com.android.settings.slice.extra.platform"

    .line 61
    invoke-virtual {p2, v3, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 64
    invoke-static {v0}, Lcom/android/settings/slices/CustomSliceRegistry;->isValidAction(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 67
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-static {p0}, Lcom/android/settings/slices/CustomSliceRegistry;->getSliceClassByUri(Landroid/net/Uri;)Ljava/lang/Class;

    move-result-object p0

    .line 66
    invoke-static {p1, p0}, Lcom/android/settings/slices/CustomSliceable;->createInstance(Landroid/content/Context;Ljava/lang/Class;)Lcom/android/settings/slices/CustomSliceable;

    move-result-object p0

    .line 68
    invoke-interface {p0, p2}, Lcom/android/settings/slices/CustomSliceable;->onNotifyChange(Landroid/content/Intent;)V

    return-void

    .line 72
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v4

    const/4 v5, -0x1

    sparse-switch v4, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v4, "com.android.settings.notification.ZEN_MODE_CHANGED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    goto :goto_1

    :sswitch_1
    const-string v4, "com.android.settings.slice.action.COPY"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x9

    goto :goto_1

    :sswitch_2
    const-string v4, "com.android.settings.slice.action.WIFI_CALLING_PREFERENCE_CELLULAR_PREFERRED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x8

    goto :goto_1

    :sswitch_3
    const-string v4, "com.android.settings.slice.action.WIFI_CALLING_PREFERENCE_WIFI_ONLY"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x6

    goto :goto_1

    :sswitch_4
    const-string v4, "com.android.settings.slice.action.SLIDER_CHANGED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :sswitch_5
    const-string v4, "com.android.settings.slice.action.WIFI_CALLING_PREFERENCE_WIFI_PREFERRED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x7

    goto :goto_1

    :sswitch_6
    const-string v4, "com.android.settings.wifi.calling.action.WIFI_CALLING_CHANGED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    goto :goto_1

    :sswitch_7
    const-string v4, "com.android.settings.bluetooth.action.BLUETOOTH_MODE_CHANGED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_8
    const-string v4, "com.android.settings.mobilenetwork.action.ENHANCED_4G_LTE_CHANGED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x5

    goto :goto_1

    :sswitch_9
    const-string v4, "com.android.settings.slice.action.TOGGLE_CHANGED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v5

    :goto_1
    packed-switch v0, :pswitch_data_0

    goto :goto_2

    .line 108
    :pswitch_0
    invoke-direct {p0, p1, v1, v3}, Lcom/android/settings/slices/SliceBroadcastReceiver;->handleCopyAction(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_2

    .line 102
    :pswitch_1
    invoke-static {p1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object p0

    .line 103
    invoke-virtual {p0}, Lcom/android/settings/overlay/FeatureFactory;->getSlicesFeatureProvider()Lcom/android/settings/slices/SlicesFeatureProvider;

    move-result-object p0

    .line 104
    invoke-interface {p0, p1}, Lcom/android/settings/slices/SlicesFeatureProvider;->getNewWifiCallingSliceHelper(Landroid/content/Context;)Lcom/android/settings/wifi/calling/WifiCallingSliceHelper;

    move-result-object p0

    .line 105
    invoke-virtual {p0, p2}, Lcom/android/settings/wifi/calling/WifiCallingSliceHelper;->handleWifiCallingPreferenceChanged(Landroid/content/Intent;)V

    goto :goto_2

    .line 94
    :pswitch_2
    invoke-static {p1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object p0

    .line 95
    invoke-virtual {p0}, Lcom/android/settings/overlay/FeatureFactory;->getSlicesFeatureProvider()Lcom/android/settings/slices/SlicesFeatureProvider;

    move-result-object p0

    .line 96
    invoke-interface {p0, p1}, Lcom/android/settings/slices/SlicesFeatureProvider;->getNewEnhanced4gLteSliceHelper(Landroid/content/Context;)Lcom/android/settings/network/telephony/Enhanced4gLteSliceHelper;

    move-result-object p0

    .line 97
    invoke-virtual {p0, p2}, Lcom/android/settings/network/telephony/Enhanced4gLteSliceHelper;->handleEnhanced4gLteChanged(Landroid/content/Intent;)V

    goto :goto_2

    .line 91
    :pswitch_3
    invoke-static {p1, p2}, Lcom/android/settings/notification/ZenModeSliceBuilder;->handleUriChange(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_2

    .line 85
    :pswitch_4
    invoke-static {p1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object p0

    .line 86
    invoke-virtual {p0}, Lcom/android/settings/overlay/FeatureFactory;->getSlicesFeatureProvider()Lcom/android/settings/slices/SlicesFeatureProvider;

    move-result-object p0

    .line 87
    invoke-interface {p0, p1}, Lcom/android/settings/slices/SlicesFeatureProvider;->getNewWifiCallingSliceHelper(Landroid/content/Context;)Lcom/android/settings/wifi/calling/WifiCallingSliceHelper;

    move-result-object p0

    .line 88
    invoke-virtual {p0, p2}, Lcom/android/settings/wifi/calling/WifiCallingSliceHelper;->handleWifiCallingChanged(Landroid/content/Intent;)V

    goto :goto_2

    .line 82
    :pswitch_5
    invoke-static {p1, p2}, Lcom/android/settings/bluetooth/BluetoothSliceBuilder;->handleUriChange(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_2

    :pswitch_6
    const-string v0, "android.app.slice.extra.RANGE_VALUE"

    .line 78
    invoke-virtual {p2, v0, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    .line 79
    invoke-direct {p0, p1, v1, p2, v3}, Lcom/android/settings/slices/SliceBroadcastReceiver;->handleSliderAction(Landroid/content/Context;Ljava/lang/String;IZ)V

    goto :goto_2

    :pswitch_7
    const-string v0, "android.app.slice.extra.TOGGLE_STATE"

    .line 74
    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p2

    .line 75
    invoke-direct {p0, p1, v1, p2, v3}, Lcom/android/settings/slices/SliceBroadcastReceiver;->handleToggleAction(Landroid/content/Context;Ljava/lang/String;ZZ)V

    :goto_2
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x7bba0bda -> :sswitch_9
        -0x78091e88 -> :sswitch_8
        -0x379033de -> :sswitch_7
        -0x1598e57d -> :sswitch_6
        -0x523c66d -> :sswitch_5
        0x10bd4b3 -> :sswitch_4
        0xa8b033a -> :sswitch_3
        0x1d8fe7a8 -> :sswitch_2
        0x35d1b332 -> :sswitch_1
        0x720b8ab8 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
