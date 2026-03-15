.class public Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;
.super Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;
.source "EnabledNetworkModePreferenceController.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Landroidx/lifecycle/LifecycleObserver;


# instance fields
.field private mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

.field private mIsGlobalCdma:Z

.field private mPreference:Landroidx/preference/Preference;

.field private mPreferredNetworkModeObserver:Landroid/database/ContentObserver;

.field mShow4GForLTE:Z

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 61
    invoke-direct {p0, p1, p2}, Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 62
    const-class p2, Landroid/telephony/CarrierConfigManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/CarrierConfigManager;

    iput-object p1, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

    .line 63
    new-instance p1, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$1;

    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {p1, p0, p2}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$1;-><init>(Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->mPreferredNetworkModeObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;)Landroidx/preference/Preference;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->mPreference:Landroidx/preference/Preference;

    return-object p0
.end method

.method private getPreferredNetworkMode()I
    .locals 3

    .line 156
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "preferred_network_mode"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;->mSubId:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sget v1, Lcom/android/internal/telephony/Phone;->PREFERRED_NT_MODE:I

    invoke-static {v0, p0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method private updatePreferenceEntries(Landroidx/preference/ListPreference;)V
    .locals 7

    .line 162
    iget-object v0, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v0

    .line 163
    iget-object v1, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

    iget v2, p0, Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;->mSubId:I

    invoke-virtual {v1, v2}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v1

    const v2, 0x7f030066

    const v3, 0x7f030061

    const/4 v4, 0x1

    const/4 v5, 0x2

    if-ne v0, v5, :cond_2

    .line 165
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    .line 166
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "lte_service_forced"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;->mSubId:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x0

    .line 165
    invoke-static {v0, v1, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 169
    iget-object v1, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getLteOnCdmaMode()I

    move-result v1

    if-ne v1, v4, :cond_0

    goto :goto_0

    :cond_0
    move v4, v5

    .line 171
    :goto_0
    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    .line 172
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "preferred_network_mode"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;->mSubId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sget v6, Lcom/android/internal/telephony/Phone;->PREFERRED_NT_MODE:I

    .line 171
    invoke-static {v1, v5, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v4, :cond_a

    if-nez v0, :cond_1

    .line 177
    invoke-virtual {p1, v3}, Landroidx/preference/ListPreference;->setEntries(I)V

    .line 179
    invoke-virtual {p1, v2}, Landroidx/preference/ListPreference;->setEntryValues(I)V

    goto/16 :goto_3

    :cond_1
    packed-switch v1, :pswitch_data_0

    .line 201
    :pswitch_0
    invoke-virtual {p1, v3}, Landroidx/preference/ListPreference;->setEntries(I)V

    .line 203
    invoke-virtual {p1, v2}, Landroidx/preference/ListPreference;->setEntryValues(I)V

    goto/16 :goto_3

    :pswitch_1
    const v0, 0x7f030064

    .line 195
    invoke-virtual {p1, v0}, Landroidx/preference/ListPreference;->setEntries(I)V

    const v0, 0x7f030065

    .line 197
    invoke-virtual {p1, v0}, Landroidx/preference/ListPreference;->setEntryValues(I)V

    goto/16 :goto_3

    :pswitch_2
    const v0, 0x7f030062

    .line 186
    invoke-virtual {p1, v0}, Landroidx/preference/ListPreference;->setEntries(I)V

    const v0, 0x7f030063

    .line 188
    invoke-virtual {p1, v0}, Landroidx/preference/ListPreference;->setEntryValues(I)V

    goto/16 :goto_3

    :cond_2
    if-ne v0, v4, :cond_a

    .line 210
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget v4, p0, Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;->mSubId:I

    invoke-static {v0, v4}, Lcom/android/settings/network/telephony/MobileNetworkUtils;->isTdscdmaSupported(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_3

    const v0, 0x7f03006f

    .line 211
    invoke-virtual {p1, v0}, Landroidx/preference/ListPreference;->setEntries(I)V

    const v0, 0x7f030070

    .line 213
    invoke-virtual {p1, v0}, Landroidx/preference/ListPreference;->setEntryValues(I)V

    goto/16 :goto_3

    :cond_3
    const-string v0, "lte_enabled_bool"

    const-string v4, "prefer_2g_bool"

    if-eqz v1, :cond_4

    .line 216
    invoke-virtual {v1, v4}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 217
    invoke-virtual {v1, v0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4

    const v0, 0x7f03006a

    .line 218
    invoke-virtual {p1, v0}, Landroidx/preference/ListPreference;->setEntries(I)V

    const v0, 0x7f03006b

    .line 219
    invoke-virtual {p1, v0}, Landroidx/preference/ListPreference;->setEntryValues(I)V

    goto :goto_3

    :cond_4
    if-eqz v1, :cond_6

    .line 221
    invoke-virtual {v1, v4}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 222
    iget-boolean v0, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->mShow4GForLTE:Z

    if-eqz v0, :cond_5

    const v0, 0x7f030068

    goto :goto_1

    :cond_5
    const v0, 0x7f030069

    .line 225
    :goto_1
    invoke-virtual {p1, v0}, Landroidx/preference/ListPreference;->setEntries(I)V

    const v0, 0x7f03006c

    .line 226
    invoke-virtual {p1, v0}, Landroidx/preference/ListPreference;->setEntryValues(I)V

    goto :goto_3

    :cond_6
    if-eqz v1, :cond_7

    .line 229
    invoke-virtual {v1, v0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    const v0, 0x7f03006d

    .line 230
    invoke-virtual {p1, v0}, Landroidx/preference/ListPreference;->setEntries(I)V

    const v0, 0x7f03006e

    .line 232
    invoke-virtual {p1, v0}, Landroidx/preference/ListPreference;->setEntryValues(I)V

    goto :goto_3

    .line 234
    :cond_7
    iget-boolean v0, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->mIsGlobalCdma:Z

    if-eqz v0, :cond_8

    .line 235
    invoke-virtual {p1, v3}, Landroidx/preference/ListPreference;->setEntries(I)V

    .line 236
    invoke-virtual {p1, v2}, Landroidx/preference/ListPreference;->setEntryValues(I)V

    goto :goto_3

    .line 238
    :cond_8
    iget-boolean v0, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->mShow4GForLTE:Z

    if-eqz v0, :cond_9

    const v0, 0x7f030060

    goto :goto_2

    :cond_9
    const v0, 0x7f030067

    .line 240
    :goto_2
    invoke-virtual {p1, v0}, Landroidx/preference/ListPreference;->setEntries(I)V

    const v0, 0x7f030071

    .line 241
    invoke-virtual {p1, v0}, Landroidx/preference/ListPreference;->setEntryValues(I)V

    .line 246
    :cond_a
    :goto_3
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget p0, p0, Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;->mSubId:I

    invoke-static {v0, p0}, Lcom/android/settings/network/telephony/MobileNetworkUtils;->isWorldMode(Landroid/content/Context;I)Z

    move-result p0

    if-eqz p0, :cond_b

    const p0, 0x7f030088

    .line 247
    invoke-virtual {p1, p0}, Landroidx/preference/ListPreference;->setEntries(I)V

    const p0, 0x7f03008a

    .line 249
    invoke-virtual {p1, p0}, Landroidx/preference/ListPreference;->setEntryValues(I)V

    :cond_b
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private updatePreferenceValueAndSummary(Landroidx/preference/ListPreference;I)V
    .locals 7

    .line 255
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    const v0, 0x7f120a0a

    const/4 v1, 0x0

    const/4 v2, 0x1

    const v3, 0x7f120a1a

    const v4, 0x7f120a19

    const/16 v5, 0xa

    const v6, 0x7f120a09

    packed-switch p2, :pswitch_data_0

    .line 366
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const v0, 0x7f1209c9

    new-array v2, v2, [Ljava/lang/Object;

    .line 367
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v2, v1

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 366
    invoke-virtual {p1, p0}, Landroidx/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    :pswitch_0
    const/16 p0, 0x15

    .line 319
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 321
    invoke-virtual {p1, v6}, Landroidx/preference/Preference;->setSummary(I)V

    goto/16 :goto_3

    :pswitch_1
    const/16 p0, 0x12

    .line 261
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    .line 260
    invoke-virtual {p1, p0}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 262
    invoke-virtual {p1, v6}, Landroidx/preference/Preference;->setSummary(I)V

    goto/16 :goto_3

    :pswitch_2
    const/16 p0, 0xd

    .line 337
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    .line 336
    invoke-virtual {p1, p0}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 338
    invoke-virtual {p1, v6}, Landroidx/preference/Preference;->setSummary(I)V

    goto/16 :goto_3

    .line 346
    :pswitch_3
    iget-object p2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;->mSubId:I

    invoke-static {p2, v1}, Lcom/android/settings/network/telephony/MobileNetworkUtils;->isTdscdmaSupported(Landroid/content/Context;I)Z

    move-result p2

    if-eqz p2, :cond_0

    const/16 p0, 0x16

    .line 348
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    .line 347
    invoke-virtual {p1, p0}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 350
    invoke-virtual {p1, v3}, Landroidx/preference/Preference;->setSummary(I)V

    goto/16 :goto_3

    .line 353
    :cond_0
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    .line 352
    invoke-virtual {p1, p2}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 355
    iget-object p2, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {p2}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result p2

    const/4 v1, 0x2

    if-eq p2, v1, :cond_3

    iget-boolean p2, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->mIsGlobalCdma:Z

    if-nez p2, :cond_3

    iget-object p2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;->mSubId:I

    .line 357
    invoke-static {p2, v1}, Lcom/android/settings/network/telephony/MobileNetworkUtils;->isWorldMode(Landroid/content/Context;I)Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_1

    .line 360
    :cond_1
    iget-boolean p0, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->mShow4GForLTE:Z

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v3

    :goto_0
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSummary(I)V

    goto/16 :goto_3

    .line 358
    :cond_3
    :goto_1
    invoke-virtual {p1, v4}, Landroidx/preference/Preference;->setSummary(I)V

    goto/16 :goto_3

    .line 289
    :pswitch_4
    iget-object p2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;->mSubId:I

    invoke-static {p2, v1}, Lcom/android/settings/network/telephony/MobileNetworkUtils;->isWorldMode(Landroid/content/Context;I)Z

    move-result p2

    if-eqz p2, :cond_4

    const p0, 0x7f120b66

    .line 290
    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setSummary(I)V

    goto/16 :goto_3

    .line 296
    :cond_4
    :pswitch_5
    iget-boolean p2, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->mIsGlobalCdma:Z

    if-nez p2, :cond_6

    const/16 p2, 0x9

    .line 298
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    .line 297
    invoke-virtual {p1, p2}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 300
    iget-boolean p0, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->mShow4GForLTE:Z

    if-eqz p0, :cond_5

    goto :goto_2

    :cond_5
    move v0, v3

    .line 299
    :goto_2
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSummary(I)V

    goto/16 :goto_3

    .line 303
    :cond_6
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    .line 302
    invoke-virtual {p1, p0}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 305
    invoke-virtual {p1, v4}, Landroidx/preference/Preference;->setSummary(I)V

    goto/16 :goto_3

    .line 309
    :pswitch_6
    iget-object p2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget p0, p0, Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;->mSubId:I

    invoke-static {p2, p0}, Lcom/android/settings/network/telephony/MobileNetworkUtils;->isWorldMode(Landroid/content/Context;I)Z

    move-result p0

    if-eqz p0, :cond_7

    const p0, 0x7f120b65

    .line 310
    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setSummary(I)V

    goto :goto_3

    :cond_7
    const/16 p0, 0x8

    .line 314
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    .line 313
    invoke-virtual {p1, p0}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 315
    invoke-virtual {p1, v3}, Landroidx/preference/Preference;->setSummary(I)V

    goto :goto_3

    :pswitch_7
    const/4 p0, 0x5

    .line 332
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    .line 331
    invoke-virtual {p1, p0}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    const p0, 0x7f120a07

    .line 333
    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setSummary(I)V

    goto :goto_3

    :pswitch_8
    const/4 p0, 0x4

    .line 327
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    .line 326
    invoke-virtual {p1, p0}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 328
    invoke-virtual {p1, v6}, Landroidx/preference/Preference;->setSummary(I)V

    goto :goto_3

    .line 277
    :pswitch_9
    iget-boolean p0, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->mIsGlobalCdma:Z

    if-nez p0, :cond_8

    .line 279
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    .line 278
    invoke-virtual {p1, p0}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    const p0, 0x7f120a08

    .line 280
    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setSummary(I)V

    goto :goto_3

    .line 283
    :cond_8
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    .line 282
    invoke-virtual {p1, p0}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 285
    invoke-virtual {p1, v4}, Landroidx/preference/Preference;->setSummary(I)V

    goto :goto_3

    .line 267
    :pswitch_a
    iget-boolean p0, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->mIsGlobalCdma:Z

    if-nez p0, :cond_9

    .line 268
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 269
    invoke-virtual {p1, v6}, Landroidx/preference/Preference;->setSummary(I)V

    goto :goto_3

    .line 271
    :cond_9
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 273
    invoke-virtual {p1, v4}, Landroidx/preference/Preference;->setSummary(I)V

    :goto_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_a
        :pswitch_a
        :pswitch_8
        :pswitch_7
        :pswitch_8
        :pswitch_8
        :pswitch_6
        :pswitch_4
        :pswitch_3
        :pswitch_5
        :pswitch_5
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_1
        :pswitch_3
        :pswitch_1
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 111
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 112
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->mPreference:Landroidx/preference/Preference;

    return-void
.end method

.method public getAvailabilityStatus(I)I
    .locals 2

    .line 76
    iget-object v0, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

    invoke-virtual {v0, p1}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v0

    .line 77
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    .line 78
    invoke-static {p0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    const/4 p0, 0x0

    const/4 v1, -0x1

    if-ne p1, v1, :cond_1

    :cond_0
    :goto_0
    move p1, p0

    goto :goto_1

    :cond_1
    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const-string p1, "hide_carrier_network_settings_bool"

    .line 83
    invoke-virtual {v0, p1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "hide_preferred_network_type_bool"

    .line 85
    invoke-virtual {v0, p1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    const-string p1, "world_phone_bool"

    .line 88
    invoke-virtual {v0, p1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 p1, 0x1

    :goto_1
    if-eqz p1, :cond_5

    goto :goto_2

    :cond_5
    const/4 p0, 0x2

    :goto_2
    return p0
.end method

.method public init(Landroidx/lifecycle/Lifecycle;I)V
    .locals 3

    .line 140
    iput p2, p0, Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;->mSubId:I

    .line 141
    iget-object p2, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

    iget v0, p0, Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;->mSubId:I

    invoke-virtual {p2, v0}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object p2

    .line 142
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;->mSubId:I

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 144
    iget-object v0, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 145
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getLteOnCdmaMode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_1

    const-string v0, "show_cdma_choices_bool"

    .line 147
    invoke-virtual {p2, v0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    iput-boolean v2, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->mIsGlobalCdma:Z

    if-eqz p2, :cond_2

    const-string v0, "show_4g_for_lte_data_icon_bool"

    .line 149
    invoke-virtual {p2, v0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 151
    :cond_2
    iput-boolean v1, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->mShow4GForLTE:Z

    .line 152
    invoke-virtual {p1, p0}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    .line 126
    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    .line 128
    iget-object v0, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget v1, p0, Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;->mSubId:I

    invoke-virtual {v0, v1, p2}, Landroid/telephony/TelephonyManager;->setPreferredNetworkType(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "preferred_network_mode"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;->mSubId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 132
    check-cast p1, Landroidx/preference/ListPreference;

    invoke-direct {p0, p1, p2}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->updatePreferenceValueAndSummary(Landroidx/preference/ListPreference;I)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public onStart()V
    .locals 3
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_START:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 99
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "preferred_network_mode"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;->mSubId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 100
    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object p0, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->mPreferredNetworkModeObserver:Landroid/database/ContentObserver;

    const/4 v2, 0x1

    .line 99
    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public onStop()V
    .locals 1
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_STOP:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 106
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->mPreferredNetworkModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 1

    .line 117
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->updateState(Landroidx/preference/Preference;)V

    .line 118
    check-cast p1, Landroidx/preference/ListPreference;

    .line 119
    invoke-direct {p0}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->getPreferredNetworkMode()I

    move-result v0

    .line 120
    invoke-direct {p0, p1}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->updatePreferenceEntries(Landroidx/preference/ListPreference;)V

    .line 121
    invoke-direct {p0, p1, v0}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->updatePreferenceValueAndSummary(Landroidx/preference/ListPreference;I)V

    return-void
.end method
