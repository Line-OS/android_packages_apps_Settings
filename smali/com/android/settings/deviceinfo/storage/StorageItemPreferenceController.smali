.class public Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "StorageItemPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# static fields
.field static final AUDIO_KEY:Ljava/lang/String; = "pref_music_audio"

.field static final FILES_KEY:Ljava/lang/String; = "pref_files"

.field static final GAME_KEY:Ljava/lang/String; = "pref_games"

.field static final MOVIES_KEY:Ljava/lang/String; = "pref_movies"

.field static final OTHER_APPS_KEY:Ljava/lang/String; = "pref_other_apps"

.field static final PHOTO_KEY:Ljava/lang/String; = "pref_photos_videos"

.field static final SYSTEM_KEY:Ljava/lang/String; = "pref_system"


# instance fields
.field private mAppPreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

.field private mAudioPreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

.field private mFilePreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

.field private final mFragment:Landroidx/fragment/app/Fragment;

.field private mGamePreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

.field private mIsWorkProfile:Z

.field private final mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

.field private mMoviesPreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

.field private mPhotoPreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

.field private mScreen:Landroidx/preference/PreferenceScreen;

.field private final mSvp:Lcom/android/settingslib/deviceinfo/StorageVolumeProvider;

.field private mSystemPreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

.field private mTotalSize:J

.field private mUsedBytes:J

.field private mUserId:I

.field private mVolume:Landroid/os/storage/VolumeInfo;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/fragment/app/Fragment;Landroid/os/storage/VolumeInfo;Lcom/android/settingslib/deviceinfo/StorageVolumeProvider;)V
    .locals 0

    .line 101
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    .line 102
    iput-object p2, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mFragment:Landroidx/fragment/app/Fragment;

    .line 103
    iput-object p3, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mVolume:Landroid/os/storage/VolumeInfo;

    .line 104
    iput-object p4, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mSvp:Lcom/android/settingslib/deviceinfo/StorageVolumeProvider;

    .line 105
    invoke-static {p1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/settings/overlay/FeatureFactory;->getMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    .line 106
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p1

    iput p1, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mUserId:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/fragment/app/Fragment;Landroid/os/storage/VolumeInfo;Lcom/android/settingslib/deviceinfo/StorageVolumeProvider;Z)V
    .locals 0

    .line 115
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;-><init>(Landroid/content/Context;Landroidx/fragment/app/Fragment;Landroid/os/storage/VolumeInfo;Lcom/android/settingslib/deviceinfo/StorageVolumeProvider;)V

    .line 116
    iput-boolean p5, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mIsWorkProfile:Z

    return-void
.end method

.method private static applyTint(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x1010429

    aput v2, v0, v1

    .line 228
    invoke-virtual {p0, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p0

    .line 229
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 230
    invoke-virtual {p0, v1, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 231
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return-object p1
.end method

.method private getAppsIntent()Landroid/content/Intent;
    .locals 3

    .line 351
    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mVolume:Landroid/os/storage/VolumeInfo;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 v0, 0x3

    .line 354
    invoke-direct {p0, v0}, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->getWorkAnnotatedBundle(I)Landroid/os/Bundle;

    move-result-object v0

    .line 355
    const-class v1, Lcom/android/settings/Settings$StorageUseActivity;

    .line 356
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "classname"

    .line 355
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    iget-object v1, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v1}, Landroid/os/storage/VolumeInfo;->getFsUuid()Ljava/lang/String;

    move-result-object v1

    const-string v2, "volumeUuid"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    iget-object v1, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v1}, Landroid/os/storage/VolumeInfo;->getDescription()Ljava/lang/String;

    move-result-object v1

    const-string v2, "volumeName"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    new-instance v1, Lcom/android/settings/core/SubSettingLauncher;

    iget-object v2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class v2, Lcom/android/settings/applications/manageapplications/ManageApplications;

    .line 360
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v1

    const v2, 0x7f12016c

    .line 361
    invoke-virtual {v1, v2}, Lcom/android/settings/core/SubSettingLauncher;->setTitleRes(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v1

    .line 362
    invoke-virtual {v1, v0}, Lcom/android/settings/core/SubSettingLauncher;->setArguments(Landroid/os/Bundle;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    iget-object p0, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mFragment:Landroidx/fragment/app/Fragment;

    .line 363
    invoke-virtual {v1, p0}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->getMetricsCategory(Ljava/lang/Object;)I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    .line 364
    invoke-virtual {p0}, Lcom/android/settings/core/SubSettingLauncher;->toIntent()Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method private getAudioIntent()Landroid/content/Intent;
    .locals 3

    .line 332
    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mVolume:Landroid/os/storage/VolumeInfo;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 v0, 0x4

    .line 336
    invoke-direct {p0, v0}, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->getWorkAnnotatedBundle(I)Landroid/os/Bundle;

    move-result-object v0

    .line 337
    const-class v1, Lcom/android/settings/Settings$StorageUseActivity;

    .line 338
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "classname"

    .line 337
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    iget-object v1, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v1}, Landroid/os/storage/VolumeInfo;->getFsUuid()Ljava/lang/String;

    move-result-object v1

    const-string v2, "volumeUuid"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    iget-object v1, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v1}, Landroid/os/storage/VolumeInfo;->getDescription()Ljava/lang/String;

    move-result-object v1

    const-string v2, "volumeName"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    const-string v2, "storageType"

    .line 341
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 342
    new-instance v1, Lcom/android/settings/core/SubSettingLauncher;

    iget-object v2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class v2, Lcom/android/settings/applications/manageapplications/ManageApplications;

    .line 343
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v1

    const v2, 0x7f120e6f

    .line 344
    invoke-virtual {v1, v2}, Lcom/android/settings/core/SubSettingLauncher;->setTitleRes(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v1

    .line 345
    invoke-virtual {v1, v0}, Lcom/android/settings/core/SubSettingLauncher;->setArguments(Landroid/os/Bundle;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    iget-object p0, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mFragment:Landroidx/fragment/app/Fragment;

    .line 346
    invoke-virtual {v1, p0}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->getMetricsCategory(Ljava/lang/Object;)I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    .line 347
    invoke-virtual {p0}, Lcom/android/settings/core/SubSettingLauncher;->toIntent()Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method private getFilesIntent()Landroid/content/Intent;
    .locals 1

    .line 399
    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mSvp:Lcom/android/settingslib/deviceinfo/StorageVolumeProvider;

    iget-object p0, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-interface {v0, p0}, Lcom/android/settingslib/deviceinfo/StorageVolumeProvider;->findEmulatedForPrivate(Landroid/os/storage/VolumeInfo;)Landroid/os/storage/VolumeInfo;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/storage/VolumeInfo;->buildBrowseIntent()Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method private getGamesIntent()Landroid/content/Intent;
    .locals 3

    const/4 v0, 0x1

    .line 368
    invoke-direct {p0, v0}, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->getWorkAnnotatedBundle(I)Landroid/os/Bundle;

    move-result-object v0

    .line 369
    const-class v1, Lcom/android/settings/Settings$GamesStorageActivity;

    .line 370
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "classname"

    .line 369
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    new-instance v1, Lcom/android/settings/core/SubSettingLauncher;

    iget-object v2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class v2, Lcom/android/settings/applications/manageapplications/ManageApplications;

    .line 372
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v1

    const v2, 0x7f1206f1

    .line 373
    invoke-virtual {v1, v2}, Lcom/android/settings/core/SubSettingLauncher;->setTitleRes(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v1

    .line 374
    invoke-virtual {v1, v0}, Lcom/android/settings/core/SubSettingLauncher;->setArguments(Landroid/os/Bundle;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    iget-object p0, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mFragment:Landroidx/fragment/app/Fragment;

    .line 375
    invoke-virtual {v1, p0}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->getMetricsCategory(Ljava/lang/Object;)I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    .line 376
    invoke-virtual {p0}, Lcom/android/settings/core/SubSettingLauncher;->toIntent()Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method private getMoviesIntent()Landroid/content/Intent;
    .locals 3

    const/4 v0, 0x1

    .line 380
    invoke-direct {p0, v0}, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->getWorkAnnotatedBundle(I)Landroid/os/Bundle;

    move-result-object v0

    .line 381
    const-class v1, Lcom/android/settings/Settings$MoviesStorageActivity;

    .line 382
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "classname"

    .line 381
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    new-instance v1, Lcom/android/settings/core/SubSettingLauncher;

    iget-object v2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class v2, Lcom/android/settings/applications/manageapplications/ManageApplications;

    .line 384
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v1

    const v2, 0x7f120e6e

    .line 385
    invoke-virtual {v1, v2}, Lcom/android/settings/core/SubSettingLauncher;->setTitleRes(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v1

    .line 386
    invoke-virtual {v1, v0}, Lcom/android/settings/core/SubSettingLauncher;->setArguments(Landroid/os/Bundle;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    iget-object p0, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mFragment:Landroidx/fragment/app/Fragment;

    .line 387
    invoke-virtual {v1, p0}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->getMetricsCategory(Ljava/lang/Object;)I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    .line 388
    invoke-virtual {p0}, Lcom/android/settings/core/SubSettingLauncher;->toIntent()Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method private getPhotosIntent()Landroid/content/Intent;
    .locals 3

    const/4 v0, 0x2

    .line 317
    invoke-direct {p0, v0}, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->getWorkAnnotatedBundle(I)Landroid/os/Bundle;

    move-result-object v0

    .line 318
    const-class v1, Lcom/android/settings/Settings$PhotosStorageActivity;

    .line 319
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "classname"

    .line 318
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "storageType"

    const/4 v2, 0x3

    .line 320
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 323
    new-instance v1, Lcom/android/settings/core/SubSettingLauncher;

    iget-object v2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class v2, Lcom/android/settings/applications/manageapplications/ManageApplications;

    .line 324
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v1

    const v2, 0x7f120e73

    .line 325
    invoke-virtual {v1, v2}, Lcom/android/settings/core/SubSettingLauncher;->setTitleRes(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v1

    .line 326
    invoke-virtual {v1, v0}, Lcom/android/settings/core/SubSettingLauncher;->setArguments(Landroid/os/Bundle;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    iget-object p0, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mFragment:Landroidx/fragment/app/Fragment;

    .line 327
    invoke-virtual {v1, p0}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->getMetricsCategory(Ljava/lang/Object;)I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    .line 328
    invoke-virtual {p0}, Lcom/android/settings/core/SubSettingLauncher;->toIntent()Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method private getWorkAnnotatedBundle(I)Landroid/os/Bundle;
    .locals 2

    .line 392
    new-instance v0, Landroid/os/Bundle;

    add-int/lit8 p1, p1, 0x2

    invoke-direct {v0, p1}, Landroid/os/Bundle;-><init>(I)V

    .line 393
    iget-boolean p1, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mIsWorkProfile:Z

    const-string v1, "workProfileOnly"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 394
    iget p0, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mUserId:I

    const-string p1, "workId"

    invoke-virtual {v0, p1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method

.method private launchIntent(Landroid/content/Intent;)V
    .locals 3

    :try_start_0
    const-string v0, "android.intent.extra.USER_ID"

    const/4 v1, -0x1

    .line 404
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 410
    iget-object p0, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {p0, p1, v2}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 412
    :cond_0
    iget-object p0, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    new-instance v1, Landroid/os/UserHandle;

    invoke-direct {v1, v0}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p0, p1, v2, v1}, Landroid/app/Activity;->startActivityForResultAsUser(Landroid/content/Intent;ILandroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 416
    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "No activity found for "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "StorageItemPreference"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private setFilesPreferenceVisibility()V
    .locals 2

    .line 191
    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mScreen:Landroidx/preference/PreferenceScreen;

    if-eqz v0, :cond_3

    .line 192
    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mSvp:Lcom/android/settingslib/deviceinfo/StorageVolumeProvider;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-interface {v0, v1}, Lcom/android/settingslib/deviceinfo/StorageVolumeProvider;->findEmulatedForPrivate(Landroid/os/storage/VolumeInfo;)Landroid/os/storage/VolumeInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 196
    invoke-virtual {v0}, Landroid/os/storage/VolumeInfo;->isMountedReadable()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_2

    .line 198
    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mScreen:Landroidx/preference/PreferenceScreen;

    iget-object p0, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mFilePreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    goto :goto_2

    .line 200
    :cond_2
    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mScreen:Landroidx/preference/PreferenceScreen;

    iget-object p0, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mFilePreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    :cond_3
    :goto_2
    return-void
.end method

.method private tintPreference(Landroidx/preference/Preference;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 222
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroidx/preference/Preference;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->applyTint(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 237
    iput-object p1, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mScreen:Landroidx/preference/PreferenceScreen;

    const-string v0, "pref_photos_videos"

    .line 238
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/deviceinfo/StorageItemPreference;

    iput-object v0, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mPhotoPreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

    const-string v0, "pref_music_audio"

    .line 239
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/deviceinfo/StorageItemPreference;

    iput-object v0, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mAudioPreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

    const-string v0, "pref_games"

    .line 240
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/deviceinfo/StorageItemPreference;

    iput-object v0, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mGamePreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

    const-string v0, "pref_movies"

    .line 241
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/deviceinfo/StorageItemPreference;

    iput-object v0, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mMoviesPreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

    const-string v0, "pref_other_apps"

    .line 242
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/deviceinfo/StorageItemPreference;

    iput-object v0, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mAppPreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

    const-string v0, "pref_system"

    .line 243
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/deviceinfo/StorageItemPreference;

    iput-object v0, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mSystemPreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

    const-string v0, "pref_files"

    .line 244
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settings/deviceinfo/StorageItemPreference;

    iput-object p1, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mFilePreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

    .line 246
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->setFilesPreferenceVisibility()V

    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public handlePreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 6

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    .line 131
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    return v0

    .line 134
    :cond_1
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v4

    const/4 v5, 0x1

    sparse-switch v4, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v4, "pref_other_apps"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x4

    goto :goto_1

    :sswitch_1
    const-string v4, "pref_system"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x6

    goto :goto_1

    :sswitch_2
    const-string v4, "pref_movies"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x3

    goto :goto_1

    :sswitch_3
    const-string v4, "pref_music_audio"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v5

    goto :goto_1

    :sswitch_4
    const-string v4, "pref_photos_videos"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v0

    goto :goto_1

    :sswitch_5
    const-string v4, "pref_games"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x2

    goto :goto_1

    :sswitch_6
    const-string v4, "pref_files"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x5

    goto :goto_1

    :cond_2
    :goto_0
    move v2, v3

    :goto_1
    packed-switch v2, :pswitch_data_0

    goto :goto_2

    .line 161
    :pswitch_0
    new-instance p1, Lcom/android/settings/deviceinfo/PrivateVolumeSettings$SystemInfoFragment;

    invoke-direct {p1}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings$SystemInfoFragment;-><init>()V

    .line 162
    iget-object v1, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {p1, v1, v0}, Landroidx/fragment/app/Fragment;->setTargetFragment(Landroidx/fragment/app/Fragment;I)V

    .line 163
    iget-object p0, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    const-string v0, "SystemInfo"

    invoke-virtual {p1, p0, v0}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return v5

    .line 156
    :pswitch_1
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->getFilesIntent()Landroid/content/Intent;

    move-result-object v1

    .line 157
    iget-object v2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settings/overlay/FeatureFactory;->getMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const/16 v4, 0x349

    new-array v0, v0, [Landroid/util/Pair;

    invoke-virtual {v2, v3, v4, v0}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;I[Landroid/util/Pair;)V

    goto :goto_2

    .line 150
    :pswitch_2
    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mVolume:Landroid/os/storage/VolumeInfo;

    if-nez v0, :cond_3

    goto :goto_2

    .line 153
    :cond_3
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->getAppsIntent()Landroid/content/Intent;

    move-result-object v1

    goto :goto_2

    .line 145
    :pswitch_3
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->getMoviesIntent()Landroid/content/Intent;

    move-result-object v1

    goto :goto_2

    .line 142
    :pswitch_4
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->getGamesIntent()Landroid/content/Intent;

    move-result-object v1

    goto :goto_2

    .line 139
    :pswitch_5
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->getAudioIntent()Landroid/content/Intent;

    move-result-object v1

    goto :goto_2

    .line 136
    :pswitch_6
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->getPhotosIntent()Landroid/content/Intent;

    move-result-object v1

    :goto_2
    if-eqz v1, :cond_4

    .line 168
    iget p1, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mUserId:I

    const-string v0, "android.intent.extra.USER_ID"

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 170
    invoke-direct {p0, v1}, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->launchIntent(Landroid/content/Intent;)V

    return v5

    .line 174
    :cond_4
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->handlePreferenceTreeClick(Landroidx/preference/Preference;)Z

    move-result p0

    return p0

    :sswitch_data_0
    .sparse-switch
        -0x61e7a6a5 -> :sswitch_6
        -0x61dd2e5b -> :sswitch_5
        -0x58bcf846 -> :sswitch_4
        0x10e4e120 -> :sswitch_3
        0x313de4df -> :sswitch_2
        0x3c06afcb -> :sswitch_1
        0x4534fddd -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public isAvailable()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public onLoadFinished(Landroid/util/SparseArray;I)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;",
            ">;I)V"
        }
    .end annotation

    .line 251
    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;

    .line 255
    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mPhotoPreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

    iget-wide v1, p2, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;->photosAppsSize:J

    iget-object v3, p2, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;->externalStats:Lcom/android/settingslib/applications/StorageStatsSource$ExternalStorageStats;

    iget-wide v4, v3, Lcom/android/settingslib/applications/StorageStatsSource$ExternalStorageStats;->imageBytes:J

    add-long/2addr v1, v4

    iget-wide v3, v3, Lcom/android/settingslib/applications/StorageStatsSource$ExternalStorageStats;->videoBytes:J

    add-long/2addr v1, v3

    iget-wide v3, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mTotalSize:J

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/settings/deviceinfo/StorageItemPreference;->setStorageSize(JJ)V

    .line 258
    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mAudioPreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

    iget-wide v1, p2, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;->musicAppsSize:J

    iget-object v3, p2, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;->externalStats:Lcom/android/settingslib/applications/StorageStatsSource$ExternalStorageStats;

    iget-wide v3, v3, Lcom/android/settingslib/applications/StorageStatsSource$ExternalStorageStats;->audioBytes:J

    add-long/2addr v1, v3

    iget-wide v3, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mTotalSize:J

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/settings/deviceinfo/StorageItemPreference;->setStorageSize(JJ)V

    .line 260
    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mGamePreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

    iget-wide v1, p2, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;->gamesSize:J

    iget-wide v3, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mTotalSize:J

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/settings/deviceinfo/StorageItemPreference;->setStorageSize(JJ)V

    .line 261
    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mMoviesPreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

    iget-wide v1, p2, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;->videoAppsSize:J

    iget-wide v3, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mTotalSize:J

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/settings/deviceinfo/StorageItemPreference;->setStorageSize(JJ)V

    .line 262
    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mAppPreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

    iget-wide v1, p2, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;->otherAppsSize:J

    iget-wide v3, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mTotalSize:J

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/settings/deviceinfo/StorageItemPreference;->setStorageSize(JJ)V

    .line 264
    iget-object p2, p2, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;->externalStats:Lcom/android/settingslib/applications/StorageStatsSource$ExternalStorageStats;

    iget-wide v0, p2, Lcom/android/settingslib/applications/StorageStatsSource$ExternalStorageStats;->totalBytes:J

    iget-wide v2, p2, Lcom/android/settingslib/applications/StorageStatsSource$ExternalStorageStats;->audioBytes:J

    sub-long/2addr v0, v2

    iget-wide v2, p2, Lcom/android/settingslib/applications/StorageStatsSource$ExternalStorageStats;->videoBytes:J

    sub-long/2addr v0, v2

    iget-wide v2, p2, Lcom/android/settingslib/applications/StorageStatsSource$ExternalStorageStats;->imageBytes:J

    sub-long/2addr v0, v2

    iget-wide v2, p2, Lcom/android/settingslib/applications/StorageStatsSource$ExternalStorageStats;->appBytes:J

    sub-long/2addr v0, v2

    .line 270
    iget-object p2, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mFilePreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

    iget-wide v2, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mTotalSize:J

    invoke-virtual {p2, v0, v1, v2, v3}, Lcom/android/settings/deviceinfo/StorageItemPreference;->setStorageSize(JJ)V

    .line 272
    iget-object p2, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mSystemPreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

    if-eqz p2, :cond_1

    const-wide/16 v0, 0x0

    const/4 p2, 0x0

    .line 276
    :goto_0
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge p2, v2, :cond_0

    .line 277
    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;

    .line 278
    iget-wide v3, v2, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;->gamesSize:J

    iget-wide v5, v2, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;->musicAppsSize:J

    add-long/2addr v3, v5

    iget-wide v5, v2, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;->videoAppsSize:J

    add-long/2addr v3, v5

    iget-wide v5, v2, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;->photosAppsSize:J

    add-long/2addr v3, v5

    iget-wide v5, v2, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;->otherAppsSize:J

    add-long/2addr v3, v5

    add-long/2addr v0, v3

    .line 284
    iget-object v2, v2, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;->externalStats:Lcom/android/settingslib/applications/StorageStatsSource$ExternalStorageStats;

    iget-wide v3, v2, Lcom/android/settingslib/applications/StorageStatsSource$ExternalStorageStats;->totalBytes:J

    iget-wide v5, v2, Lcom/android/settingslib/applications/StorageStatsSource$ExternalStorageStats;->appBytes:J

    sub-long/2addr v3, v5

    add-long/2addr v0, v3

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    const-wide/32 p1, 0x40000000

    .line 288
    iget-wide v2, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mUsedBytes:J

    sub-long/2addr v2, v0

    invoke-static {p1, p2, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    .line 289
    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mSystemPreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

    iget-wide v1, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mTotalSize:J

    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/android/settings/deviceinfo/StorageItemPreference;->setStorageSize(JJ)V

    :cond_1
    return-void
.end method

.method public setTotalSize(J)V
    .locals 0

    .line 298
    iput-wide p1, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mTotalSize:J

    return-void
.end method

.method public setUsedSize(J)V
    .locals 0

    .line 294
    iput-wide p1, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mUsedBytes:J

    return-void
.end method

.method public setUserId(Landroid/os/UserHandle;)V
    .locals 0

    .line 209
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p1

    iput p1, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mUserId:I

    .line 211
    iget-object p1, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mPhotoPreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

    invoke-direct {p0, p1}, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->tintPreference(Landroidx/preference/Preference;)V

    .line 212
    iget-object p1, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mMoviesPreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

    invoke-direct {p0, p1}, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->tintPreference(Landroidx/preference/Preference;)V

    .line 213
    iget-object p1, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mAudioPreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

    invoke-direct {p0, p1}, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->tintPreference(Landroidx/preference/Preference;)V

    .line 214
    iget-object p1, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mGamePreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

    invoke-direct {p0, p1}, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->tintPreference(Landroidx/preference/Preference;)V

    .line 215
    iget-object p1, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mAppPreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

    invoke-direct {p0, p1}, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->tintPreference(Landroidx/preference/Preference;)V

    .line 216
    iget-object p1, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mSystemPreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

    invoke-direct {p0, p1}, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->tintPreference(Landroidx/preference/Preference;)V

    .line 217
    iget-object p1, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mFilePreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

    invoke-direct {p0, p1}, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->tintPreference(Landroidx/preference/Preference;)V

    return-void
.end method

.method public setVolume(Landroid/os/storage/VolumeInfo;)V
    .locals 0

    .line 186
    iput-object p1, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mVolume:Landroid/os/storage/VolumeInfo;

    .line 187
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->setFilesPreferenceVisibility()V

    return-void
.end method
