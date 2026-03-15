.class public Lcom/android/settings/applications/AppStorageSettings;
.super Lcom/android/settings/applications/AppInfoWithHeader;
.source "AppStorageSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/settingslib/applications/ApplicationsState$Callbacks;
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroidx/loader/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/applications/AppStorageSettings$ClearUserDataObserver;,
        Lcom/android/settings/applications/AppStorageSettings$ClearCacheObserver;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/settings/applications/AppInfoWithHeader;",
        "Landroid/view/View$OnClickListener;",
        "Lcom/android/settingslib/applications/ApplicationsState$Callbacks;",
        "Landroid/content/DialogInterface$OnClickListener;",
        "Landroidx/loader/app/LoaderManager$LoaderCallbacks<",
        "Lcom/android/settingslib/applications/StorageStatsSource$AppStorageStats;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AppStorageSettings"


# instance fields
.field mButtonsPref:Lcom/android/settingslib/widget/ActionButtonsPreference;

.field private mCacheCleared:Z

.field private mCanClearData:Z

.field private mCandidates:[Landroid/os/storage/VolumeInfo;

.field private mChangeStorageButton:Landroid/widget/Button;

.field private mClearCacheObserver:Lcom/android/settings/applications/AppStorageSettings$ClearCacheObserver;

.field private mClearDataObserver:Lcom/android/settings/applications/AppStorageSettings$ClearUserDataObserver;

.field private mClearUri:Lcom/android/settingslib/widget/LayoutPreference;

.field private mClearUriButton:Landroid/widget/Button;

.field private mDataCleared:Z

.field private mDialogBuilder:Landroidx/appcompat/app/AlertDialog$Builder;

.field private final mHandler:Landroid/os/Handler;

.field private mInfo:Landroid/content/pm/ApplicationInfo;

.field mSizeController:Lcom/android/settings/applications/AppStorageSizesController;

.field private mStorageUsed:Landroidx/preference/Preference;

.field private mUri:Landroidx/preference/PreferenceCategory;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 69
    invoke-direct {p0}, Lcom/android/settings/applications/AppInfoWithHeader;-><init>()V

    const/4 v0, 0x1

    .line 120
    iput-boolean v0, p0, Lcom/android/settings/applications/AppStorageSettings;->mCanClearData:Z

    .line 587
    new-instance v0, Lcom/android/settings/applications/AppStorageSettings$3;

    invoke-direct {v0, p0}, Lcom/android/settings/applications/AppStorageSettings$3;-><init>(Lcom/android/settings/applications/AppStorageSettings;)V

    iput-object v0, p0, Lcom/android/settings/applications/AppStorageSettings;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/applications/AppStorageSettings;)V
    .locals 0

    .line 69
    invoke-direct {p0}, Lcom/android/settings/applications/AppStorageSettings;->initiateClearUserData()V

    return-void
.end method

.method static synthetic access$102(Lcom/android/settings/applications/AppStorageSettings;Z)Z
    .locals 0

    .line 69
    iput-boolean p1, p0, Lcom/android/settings/applications/AppStorageSettings;->mDataCleared:Z

    return p1
.end method

.method static synthetic access$202(Lcom/android/settings/applications/AppStorageSettings;Z)Z
    .locals 0

    .line 69
    iput-boolean p1, p0, Lcom/android/settings/applications/AppStorageSettings;->mCacheCleared:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/settings/applications/AppStorageSettings;Landroid/os/Message;)V
    .locals 0

    .line 69
    invoke-direct {p0, p1}, Lcom/android/settings/applications/AppStorageSettings;->processClearMsg(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings/applications/AppStorageSettings;)V
    .locals 0

    .line 69
    invoke-direct {p0}, Lcom/android/settings/applications/AppStorageSettings;->updateSize()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/settings/applications/AppStorageSettings;)Landroid/os/Handler;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/android/settings/applications/AppStorageSettings;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method private clearUriPermissions()V
    .locals 3

    .line 463
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 464
    iget-object v1, p0, Lcom/android/settings/applications/AppInfoBase;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v1, v1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v2, "activity"

    .line 466
    invoke-virtual {v0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 468
    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->clearGrantedUriPermissions(Ljava/lang/String;)V

    .line 471
    invoke-direct {p0}, Lcom/android/settings/applications/AppStorageSettings;->refreshGrantedUriPermissions()V

    return-void
.end method

.method private initDataButtons()V
    .locals 7

    .line 289
    iget-object v0, p0, Lcom/android/settings/applications/AppInfoBase;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->manageSpaceActivityName:Ljava/lang/String;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 290
    :goto_0
    iget-object v3, p0, Lcom/android/settings/applications/AppInfoBase;->mDpm:Landroid/app/admin/DevicePolicyManager;

    iget-object v4, p0, Lcom/android/settings/applications/AppInfoBase;->mPackageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/app/admin/DevicePolicyManager;->packageHasActiveAdmins(Ljava/lang/String;)Z

    move-result v3

    .line 292
    iget-object v4, p0, Lcom/android/settings/applications/AppInfoBase;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v4, v4, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v4, v4, 0x41

    if-ne v4, v1, :cond_1

    move v4, v1

    goto :goto_1

    :cond_1
    move v4, v2

    :goto_1
    if-nez v4, :cond_3

    if-eqz v3, :cond_2

    goto :goto_2

    :cond_2
    move v3, v2

    goto :goto_3

    :cond_3
    :goto_2
    move v3, v1

    .line 296
    :goto_3
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    if-eqz v0, :cond_4

    .line 298
    iget-object v5, p0, Lcom/android/settings/applications/AppInfoBase;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v5, v5, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/settings/applications/AppInfoBase;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v6, v6, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->manageSpaceActivityName:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 301
    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v5, v4, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v4

    if-eqz v4, :cond_5

    goto :goto_4

    :cond_5
    move v1, v2

    :goto_4
    const v4, 0x7f080240

    const v5, 0x7f120413

    if-nez v0, :cond_6

    if-nez v3, :cond_7

    :cond_6
    if-nez v1, :cond_8

    .line 305
    :cond_7
    iget-object v0, p0, Lcom/android/settings/applications/AppStorageSettings;->mButtonsPref:Lcom/android/settingslib/widget/ActionButtonsPreference;

    .line 306
    invoke-virtual {v0, v5}, Lcom/android/settingslib/widget/ActionButtonsPreference;->setButton1Text(I)Lcom/android/settingslib/widget/ActionButtonsPreference;

    move-result-object v0

    .line 307
    invoke-virtual {v0, v4}, Lcom/android/settingslib/widget/ActionButtonsPreference;->setButton1Icon(I)Lcom/android/settingslib/widget/ActionButtonsPreference;

    move-result-object v0

    .line 308
    invoke-virtual {v0, v2}, Lcom/android/settingslib/widget/ActionButtonsPreference;->setButton1Enabled(Z)Lcom/android/settingslib/widget/ActionButtonsPreference;

    .line 309
    iput-boolean v2, p0, Lcom/android/settings/applications/AppStorageSettings;->mCanClearData:Z

    goto :goto_6

    :cond_8
    if-eqz v0, :cond_9

    .line 312
    iget-object v0, p0, Lcom/android/settings/applications/AppStorageSettings;->mButtonsPref:Lcom/android/settingslib/widget/ActionButtonsPreference;

    const v1, 0x7f120942

    invoke-virtual {v0, v1}, Lcom/android/settingslib/widget/ActionButtonsPreference;->setButton1Text(I)Lcom/android/settingslib/widget/ActionButtonsPreference;

    goto :goto_5

    .line 314
    :cond_9
    iget-object v0, p0, Lcom/android/settings/applications/AppStorageSettings;->mButtonsPref:Lcom/android/settingslib/widget/ActionButtonsPreference;

    .line 315
    invoke-virtual {v0, v5}, Lcom/android/settingslib/widget/ActionButtonsPreference;->setButton1Text(I)Lcom/android/settingslib/widget/ActionButtonsPreference;

    move-result-object v0

    .line 316
    invoke-virtual {v0, v4}, Lcom/android/settingslib/widget/ActionButtonsPreference;->setButton1Icon(I)Lcom/android/settingslib/widget/ActionButtonsPreference;

    .line 318
    :goto_5
    iget-object v0, p0, Lcom/android/settings/applications/AppStorageSettings;->mButtonsPref:Lcom/android/settingslib/widget/ActionButtonsPreference;

    .line 319
    invoke-virtual {v0, v5}, Lcom/android/settingslib/widget/ActionButtonsPreference;->setButton1Text(I)Lcom/android/settingslib/widget/ActionButtonsPreference;

    move-result-object v0

    .line 320
    invoke-virtual {v0, v4}, Lcom/android/settingslib/widget/ActionButtonsPreference;->setButton1Icon(I)Lcom/android/settingslib/widget/ActionButtonsPreference;

    move-result-object v0

    new-instance v1, Lcom/android/settings/applications/-$$Lambda$AppStorageSettings$uXyfUeZFqT2Ct1euRP3fPo2Es3o;

    invoke-direct {v1, p0}, Lcom/android/settings/applications/-$$Lambda$AppStorageSettings$uXyfUeZFqT2Ct1euRP3fPo2Es3o;-><init>(Lcom/android/settings/applications/AppStorageSettings;)V

    .line 321
    invoke-virtual {v0, v1}, Lcom/android/settingslib/widget/ActionButtonsPreference;->setButton1OnClickListener(Landroid/view/View$OnClickListener;)Lcom/android/settingslib/widget/ActionButtonsPreference;

    .line 324
    :goto_6
    iget-boolean v0, p0, Lcom/android/settings/applications/AppInfoBase;->mAppsControlDisallowedBySystem:Z

    if-eqz v0, :cond_a

    .line 325
    iget-object p0, p0, Lcom/android/settings/applications/AppStorageSettings;->mButtonsPref:Lcom/android/settingslib/widget/ActionButtonsPreference;

    invoke-virtual {p0, v2}, Lcom/android/settingslib/widget/ActionButtonsPreference;->setButton1Enabled(Z)Lcom/android/settingslib/widget/ActionButtonsPreference;

    :cond_a
    return-void
.end method

.method private initMoveDialog()V
    .locals 7

    .line 330
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 331
    const-class v1, Landroid/os/storage/StorageManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/StorageManager;

    .line 333
    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/applications/AppInfoBase;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    .line 334
    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->getPackageCandidateVolumes(Landroid/content/pm/ApplicationInfo;)Ljava/util/List;

    move-result-object v0

    .line 335
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_2

    .line 336
    invoke-static {}, Landroid/os/storage/VolumeInfo;->getDescriptionComparator()Ljava/util/Comparator;

    move-result-object v2

    invoke-static {v0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 338
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/CharSequence;

    const/4 v3, -0x1

    const/4 v4, 0x0

    .line 340
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 341
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/storage/VolumeInfo;

    invoke-virtual {v1, v5}, Landroid/os/storage/StorageManager;->getBestVolumeDescription(Landroid/os/storage/VolumeInfo;)Ljava/lang/String;

    move-result-object v5

    .line 342
    iget-object v6, p0, Lcom/android/settings/applications/AppStorageSettings;->mStorageUsed:Landroidx/preference/Preference;

    invoke-virtual {v6}, Landroidx/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-static {v5, v6}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move v3, v4

    .line 345
    :cond_0
    aput-object v5, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 347
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Landroid/os/storage/VolumeInfo;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/os/storage/VolumeInfo;

    iput-object v0, p0, Lcom/android/settings/applications/AppStorageSettings;->mCandidates:[Landroid/os/storage/VolumeInfo;

    .line 348
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f1203f5

    .line 349
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 350
    invoke-virtual {v0, v2, v3, p0}, Landroidx/appcompat/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    const v1, 0x7f1203bd

    const/4 v2, 0x0

    .line 351
    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    iput-object v0, p0, Lcom/android/settings/applications/AppStorageSettings;->mDialogBuilder:Landroidx/appcompat/app/AlertDialog$Builder;

    goto :goto_1

    :cond_2
    const-string v0, "storage_used"

    .line 353
    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    const-string v0, "change_storage_button"

    .line 354
    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    const-string v0, "storage_space"

    .line 355
    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    :goto_1
    return-void
.end method

.method private initiateClearUserData()V
    .locals 5

    .line 364
    iget-object v0, p0, Lcom/android/settings/core/InstrumentedPreferenceFragment;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Landroid/util/Pair;

    const/16 v4, 0x36c

    invoke-virtual {v0, v1, v4, v3}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;I[Landroid/util/Pair;)V

    .line 365
    iget-object v0, p0, Lcom/android/settings/applications/AppStorageSettings;->mButtonsPref:Lcom/android/settingslib/widget/ActionButtonsPreference;

    invoke-virtual {v0, v2}, Lcom/android/settingslib/widget/ActionButtonsPreference;->setButton1Enabled(Z)Lcom/android/settingslib/widget/ActionButtonsPreference;

    .line 367
    iget-object v0, p0, Lcom/android/settings/applications/AppInfoBase;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 368
    sget-object v1, Lcom/android/settings/applications/AppStorageSettings;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Clearing user data for package : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    iget-object v1, p0, Lcom/android/settings/applications/AppStorageSettings;->mClearDataObserver:Lcom/android/settings/applications/AppStorageSettings$ClearUserDataObserver;

    if-nez v1, :cond_0

    .line 370
    new-instance v1, Lcom/android/settings/applications/AppStorageSettings$ClearUserDataObserver;

    invoke-direct {v1, p0}, Lcom/android/settings/applications/AppStorageSettings$ClearUserDataObserver;-><init>(Lcom/android/settings/applications/AppStorageSettings;)V

    iput-object v1, p0, Lcom/android/settings/applications/AppStorageSettings;->mClearDataObserver:Lcom/android/settings/applications/AppStorageSettings$ClearUserDataObserver;

    .line 373
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-string v3, "activity"

    invoke-virtual {v1, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    .line 374
    iget-object v3, p0, Lcom/android/settings/applications/AppStorageSettings;->mClearDataObserver:Lcom/android/settings/applications/AppStorageSettings$ClearUserDataObserver;

    invoke-virtual {v1, v0, v3}, Landroid/app/ActivityManager;->clearApplicationUserData(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 377
    sget-object v1, Lcom/android/settings/applications/AppStorageSettings;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Couldn\'t clear application user data for package:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x2

    .line 378
    invoke-virtual {p0, v0, v2}, Lcom/android/settings/applications/AppInfoBase;->showDialogInner(II)V

    goto :goto_0

    .line 380
    :cond_1
    iget-object p0, p0, Lcom/android/settings/applications/AppStorageSettings;->mButtonsPref:Lcom/android/settingslib/widget/ActionButtonsPreference;

    const v0, 0x7f120c29

    invoke-virtual {p0, v0}, Lcom/android/settingslib/widget/ActionButtonsPreference;->setButton1Text(I)Lcom/android/settingslib/widget/ActionButtonsPreference;

    :goto_0
    return-void
.end method

.method private isMoveInProgress()Z
    .locals 2

    .line 239
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/applications/AppInfoBase;->mPackageName:Ljava/lang/String;

    .line 240
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    .line 239
    invoke-interface {v0, p0, v1}, Landroid/content/pm/IPackageManager;->checkPackageStartable(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x0

    return p0

    :catch_0
    const/4 p0, 0x1

    return p0
.end method

.method private processClearMsg(Landroid/os/Message;)V
    .locals 3

    .line 389
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 390
    iget-object v0, p0, Lcom/android/settings/applications/AppInfoBase;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 391
    iget-object v1, p0, Lcom/android/settings/applications/AppStorageSettings;->mButtonsPref:Lcom/android/settingslib/widget/ActionButtonsPreference;

    const v2, 0x7f120413

    .line 392
    invoke-virtual {v1, v2}, Lcom/android/settingslib/widget/ActionButtonsPreference;->setButton1Text(I)Lcom/android/settingslib/widget/ActionButtonsPreference;

    move-result-object v1

    const v2, 0x7f080240

    .line 393
    invoke-virtual {v1, v2}, Lcom/android/settingslib/widget/ActionButtonsPreference;->setButton1Icon(I)Lcom/android/settingslib/widget/ActionButtonsPreference;

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 395
    sget-object p1, Lcom/android/settings/applications/AppStorageSettings;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cleared user data for package : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    invoke-direct {p0}, Lcom/android/settings/applications/AppStorageSettings;->updateSize()V

    goto :goto_0

    .line 398
    :cond_0
    iget-object p0, p0, Lcom/android/settings/applications/AppStorageSettings;->mButtonsPref:Lcom/android/settingslib/widget/ActionButtonsPreference;

    invoke-virtual {p0, v1}, Lcom/android/settingslib/widget/ActionButtonsPreference;->setButton1Enabled(Z)Lcom/android/settingslib/widget/ActionButtonsPreference;

    :goto_0
    return-void
.end method

.method private refreshButtons()V
    .locals 0

    .line 284
    invoke-direct {p0}, Lcom/android/settings/applications/AppStorageSettings;->initMoveDialog()V

    .line 285
    invoke-direct {p0}, Lcom/android/settings/applications/AppStorageSettings;->initDataButtons()V

    return-void
.end method

.method private refreshGrantedUriPermissions()V
    .locals 9

    .line 404
    invoke-direct {p0}, Lcom/android/settings/applications/AppStorageSettings;->removeUriPermissionsFromUi()V

    .line 407
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 409
    iget-object v1, p0, Lcom/android/settings/applications/AppInfoBase;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v1, v1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 410
    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getGrantedUriPermissions(Ljava/lang/String;)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v0

    .line 412
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 413
    iget-object p0, p0, Lcom/android/settings/applications/AppStorageSettings;->mClearUriButton:Landroid/widget/Button;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/Button;->setVisibility(I)V

    return-void

    .line 417
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 420
    new-instance v2, Ljava/util/TreeMap;

    invoke-direct {v2}, Ljava/util/TreeMap;-><init>()V

    .line 421
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/GrantedUriPermission;

    .line 422
    iget-object v3, v3, Landroid/app/GrantedUriPermission;->uri:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v3

    .line 423
    invoke-virtual {v1, v3, v5}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v3

    if-nez v3, :cond_1

    goto :goto_0

    .line 428
    :cond_1
    iget-object v3, v3, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v3, v1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 429
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/MutableInt;

    if-nez v5, :cond_2

    .line 431
    new-instance v5, Landroid/util/MutableInt;

    invoke-direct {v5, v4}, Landroid/util/MutableInt;-><init>(I)V

    invoke-interface {v2, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 433
    :cond_2
    iget v3, v5, Landroid/util/MutableInt;->value:I

    add-int/2addr v3, v4

    iput v3, v5, Landroid/util/MutableInt;->value:I

    goto :goto_0

    .line 439
    :cond_3
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 440
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/MutableInt;

    iget v2, v2, Landroid/util/MutableInt;->value:I

    .line 441
    new-instance v3, Landroidx/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v3, v6}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 442
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v3, v1}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 443
    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v6, 0x7f10004c

    new-array v7, v4, [Ljava/lang/Object;

    .line 445
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v5

    .line 444
    invoke-virtual {v1, v6, v2, v7}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 443
    invoke-virtual {v3, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 446
    invoke-virtual {v3, v5}, Landroidx/preference/Preference;->setSelectable(Z)V

    const v1, 0x7f0d00cf

    .line 447
    invoke-virtual {v3, v1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    .line 448
    invoke-virtual {v3, v5}, Landroidx/preference/Preference;->setOrder(I)V

    .line 449
    sget-object v1, Lcom/android/settings/applications/AppStorageSettings;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Adding preference \'"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, "\' at order "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    iget-object v1, p0, Lcom/android/settings/applications/AppStorageSettings;->mUri:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v1, v3}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    goto :goto_1

    .line 453
    :cond_4
    iget-boolean v0, p0, Lcom/android/settings/applications/AppInfoBase;->mAppsControlDisallowedBySystem:Z

    if-eqz v0, :cond_5

    .line 454
    iget-object v0, p0, Lcom/android/settings/applications/AppStorageSettings;->mClearUriButton:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 457
    :cond_5
    iget-object v0, p0, Lcom/android/settings/applications/AppStorageSettings;->mClearUri:Lcom/android/settingslib/widget/LayoutPreference;

    invoke-virtual {v0, v5}, Landroidx/preference/Preference;->setOrder(I)V

    .line 458
    iget-object p0, p0, Lcom/android/settings/applications/AppStorageSettings;->mClearUriButton:Landroid/widget/Button;

    invoke-virtual {p0, v5}, Landroid/widget/Button;->setVisibility(I)V

    return-void
.end method

.method private removeUriPermissionsFromUi()V
    .locals 3

    .line 476
    iget-object v0, p0, Lcom/android/settings/applications/AppStorageSettings;->mUri:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 478
    iget-object v1, p0, Lcom/android/settings/applications/AppStorageSettings;->mUri:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v1, v0}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v1

    .line 479
    iget-object v2, p0, Lcom/android/settings/applications/AppStorageSettings;->mClearUri:Lcom/android/settingslib/widget/LayoutPreference;

    if-eq v1, v2, :cond_0

    .line 480
    iget-object v2, p0, Lcom/android/settings/applications/AppStorageSettings;->mUri:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v2, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private setupViews()V
    .locals 3

    .line 163
    new-instance v0, Lcom/android/settings/applications/AppStorageSizesController$Builder;

    invoke-direct {v0}, Lcom/android/settings/applications/AppStorageSizesController$Builder;-><init>()V

    const-string v1, "total_size"

    .line 164
    invoke-virtual {p0, v1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/AppStorageSizesController$Builder;->setTotalSizePreference(Landroidx/preference/Preference;)Lcom/android/settings/applications/AppStorageSizesController$Builder;

    const-string v1, "app_size"

    .line 165
    invoke-virtual {p0, v1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/AppStorageSizesController$Builder;->setAppSizePreference(Landroidx/preference/Preference;)Lcom/android/settings/applications/AppStorageSizesController$Builder;

    const-string v1, "data_size"

    .line 166
    invoke-virtual {p0, v1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/AppStorageSizesController$Builder;->setDataSizePreference(Landroidx/preference/Preference;)Lcom/android/settings/applications/AppStorageSizesController$Builder;

    const-string v1, "cache_size"

    .line 167
    invoke-virtual {p0, v1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/AppStorageSizesController$Builder;->setCacheSizePreference(Landroidx/preference/Preference;)Lcom/android/settings/applications/AppStorageSizesController$Builder;

    const v1, 0x7f12042d

    .line 168
    invoke-virtual {v0, v1}, Lcom/android/settings/applications/AppStorageSizesController$Builder;->setComputingString(I)Lcom/android/settings/applications/AppStorageSizesController$Builder;

    const v1, 0x7f1207e6

    .line 169
    invoke-virtual {v0, v1}, Lcom/android/settings/applications/AppStorageSizesController$Builder;->setErrorString(I)Lcom/android/settings/applications/AppStorageSizesController$Builder;

    .line 170
    invoke-virtual {v0}, Lcom/android/settings/applications/AppStorageSizesController$Builder;->build()Lcom/android/settings/applications/AppStorageSizesController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/AppStorageSettings;->mSizeController:Lcom/android/settings/applications/AppStorageSizesController;

    const-string v0, "header_view"

    .line 171
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/widget/ActionButtonsPreference;

    iput-object v0, p0, Lcom/android/settings/applications/AppStorageSettings;->mButtonsPref:Lcom/android/settingslib/widget/ActionButtonsPreference;

    const-string v0, "storage_used"

    .line 172
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/AppStorageSettings;->mStorageUsed:Landroidx/preference/Preference;

    const-string v0, "change_storage_button"

    .line 173
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/widget/LayoutPreference;

    const v1, 0x7f0a00c6

    .line 174
    invoke-virtual {v0, v1}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/applications/AppStorageSettings;->mChangeStorageButton:Landroid/widget/Button;

    .line 175
    iget-object v0, p0, Lcom/android/settings/applications/AppStorageSettings;->mChangeStorageButton:Landroid/widget/Button;

    const v2, 0x7f1203f4

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(I)V

    .line 176
    iget-object v0, p0, Lcom/android/settings/applications/AppStorageSettings;->mChangeStorageButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 179
    iget-object v0, p0, Lcom/android/settings/applications/AppStorageSettings;->mButtonsPref:Lcom/android/settingslib/widget/ActionButtonsPreference;

    const v2, 0x7f12040b

    .line 180
    invoke-virtual {v0, v2}, Lcom/android/settingslib/widget/ActionButtonsPreference;->setButton2Text(I)Lcom/android/settingslib/widget/ActionButtonsPreference;

    move-result-object v0

    const v2, 0x7f080240

    .line 181
    invoke-virtual {v0, v2}, Lcom/android/settingslib/widget/ActionButtonsPreference;->setButton2Icon(I)Lcom/android/settingslib/widget/ActionButtonsPreference;

    const-string v0, "uri_category"

    .line 184
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/settings/applications/AppStorageSettings;->mUri:Landroidx/preference/PreferenceCategory;

    .line 185
    iget-object v0, p0, Lcom/android/settings/applications/AppStorageSettings;->mUri:Landroidx/preference/PreferenceCategory;

    const-string v2, "clear_uri_button"

    invoke-virtual {v0, v2}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/widget/LayoutPreference;

    iput-object v0, p0, Lcom/android/settings/applications/AppStorageSettings;->mClearUri:Lcom/android/settingslib/widget/LayoutPreference;

    .line 186
    iget-object v0, p0, Lcom/android/settings/applications/AppStorageSettings;->mClearUri:Lcom/android/settingslib/widget/LayoutPreference;

    invoke-virtual {v0, v1}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/applications/AppStorageSettings;->mClearUriButton:Landroid/widget/Button;

    .line 187
    iget-object v0, p0, Lcom/android/settings/applications/AppStorageSettings;->mClearUriButton:Landroid/widget/Button;

    const v1, 0x7f120412

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 188
    iget-object v0, p0, Lcom/android/settings/applications/AppStorageSettings;->mClearUriButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private updateSize()V
    .locals 3

    .line 538
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 540
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/applications/AppInfoBase;->mPackageName:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/AppStorageSettings;->mInfo:Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 542
    sget-object v1, Lcom/android/settings/applications/AppStorageSettings;->TAG:Ljava/lang/String;

    const-string v2, "Could not find package"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 545
    :goto_0
    iget-object v0, p0, Lcom/android/settings/applications/AppStorageSettings;->mInfo:Landroid/content/pm/ApplicationInfo;

    if-nez v0, :cond_0

    return-void

    .line 549
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLoaderManager()Landroidx/loader/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x1

    sget-object v2, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2, p0}, Landroidx/loader/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroidx/loader/app/LoaderManager$LoaderCallbacks;)Landroidx/loader/content/Loader;

    return-void
.end method


# virtual methods
.method protected createDialog(II)Landroidx/appcompat/app/AlertDialog;
    .locals 3

    const/4 p2, 0x1

    const v0, 0x7f1205d5

    const/4 v1, 0x0

    if-eq p1, p2, :cond_1

    const/4 p2, 0x2

    if-eq p1, p2, :cond_0

    return-object v1

    .line 501
    :cond_0
    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-direct {p1, p2}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 502
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    const v1, 0x7f120413

    invoke-virtual {p2, v1}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 503
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    const v1, 0x7f12040e

    invoke-virtual {p2, v1}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    new-instance p2, Lcom/android/settings/applications/AppStorageSettings$2;

    invoke-direct {p2, p0}, Lcom/android/settings/applications/AppStorageSettings$2;-><init>(Lcom/android/settings/applications/AppStorageSettings;)V

    .line 504
    invoke-virtual {p1, v0, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 511
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    return-object p0

    .line 489
    :cond_1
    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-direct {p1, p2}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 490
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    const v2, 0x7f12040d

    invoke-virtual {p2, v2}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 491
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    const v2, 0x7f12040c

    invoke-virtual {p2, v2}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    new-instance p2, Lcom/android/settings/applications/AppStorageSettings$1;

    invoke-direct {p2, p0}, Lcom/android/settings/applications/AppStorageSettings$1;-><init>(Lcom/android/settings/applications/AppStorageSettings;)V

    .line 492
    invoke-virtual {p1, v0, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    const p0, 0x7f1205d0

    .line 498
    invoke-virtual {p1, p0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 499
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x13

    return p0
.end method

.method handleClearCacheClick()V
    .locals 4

    .line 193
    iget-object v0, p0, Lcom/android/settings/applications/AppInfoBase;->mAppsControlDisallowedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/applications/AppInfoBase;->mAppsControlDisallowedBySystem:Z

    if-nez v0, :cond_0

    .line 195
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/applications/AppInfoBase;->mAppsControlDisallowedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    .line 194
    invoke-static {v0, p0}, Lcom/android/settingslib/RestrictedLockUtils;->sendShowAdminSupportDetailsIntent(Landroid/content/Context;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    return-void

    .line 197
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/AppStorageSettings;->mClearCacheObserver:Lcom/android/settings/applications/AppStorageSettings$ClearCacheObserver;

    if-nez v0, :cond_1

    .line 198
    new-instance v0, Lcom/android/settings/applications/AppStorageSettings$ClearCacheObserver;

    invoke-direct {v0, p0}, Lcom/android/settings/applications/AppStorageSettings$ClearCacheObserver;-><init>(Lcom/android/settings/applications/AppStorageSettings;)V

    iput-object v0, p0, Lcom/android/settings/applications/AppStorageSettings;->mClearCacheObserver:Lcom/android/settings/applications/AppStorageSettings$ClearCacheObserver;

    .line 200
    :cond_1
    iget-object v0, p0, Lcom/android/settings/core/InstrumentedPreferenceFragment;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const/16 v2, 0x36d

    const/4 v3, 0x0

    new-array v3, v3, [Landroid/util/Pair;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;I[Landroid/util/Pair;)V

    .line 202
    iget-object v0, p0, Lcom/android/settings/applications/AppInfoBase;->mPm:Landroid/content/pm/PackageManager;

    iget-object v1, p0, Lcom/android/settings/applications/AppInfoBase;->mPackageName:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/settings/applications/AppStorageSettings;->mClearCacheObserver:Lcom/android/settings/applications/AppStorageSettings$ClearCacheObserver;

    invoke-virtual {v0, v1, p0}, Landroid/content/pm/PackageManager;->deleteApplicationCacheFiles(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;)V

    return-void
.end method

.method handleClearDataClick()V
    .locals 3

    .line 207
    iget-object v0, p0, Lcom/android/settings/applications/AppInfoBase;->mAppsControlDisallowedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/applications/AppInfoBase;->mAppsControlDisallowedBySystem:Z

    if-nez v0, :cond_0

    .line 209
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/applications/AppInfoBase;->mAppsControlDisallowedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    .line 208
    invoke-static {v0, p0}, Lcom/android/settingslib/RestrictedLockUtils;->sendShowAdminSupportDetailsIntent(Landroid/content/Context;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    goto :goto_0

    .line 210
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/AppInfoBase;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->manageSpaceActivityName:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 211
    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result v0

    if-nez v0, :cond_2

    .line 212
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 213
    iget-object v1, p0, Lcom/android/settings/applications/AppInfoBase;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v1, v1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings/applications/AppInfoBase;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->manageSpaceActivityName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x2

    .line 215
    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 218
    invoke-virtual {p0, v0, v1}, Lcom/android/settings/applications/AppInfoBase;->showDialogInner(II)V

    :cond_2
    :goto_0
    return-void
.end method

.method public synthetic lambda$initDataButtons$0$AppStorageSettings(Landroid/view/View;)V
    .locals 0

    .line 321
    invoke-virtual {p0}, Lcom/android/settings/applications/AppStorageSettings;->handleClearDataClick()V

    return-void
.end method

.method public synthetic lambda$updateUiWithSize$1$AppStorageSettings(Landroid/view/View;)V
    .locals 0

    .line 573
    invoke-virtual {p0}, Lcom/android/settings/applications/AppStorageSettings;->handleClearDataClick()V

    return-void
.end method

.method public synthetic lambda$updateUiWithSize$2$AppStorageSettings(Landroid/view/View;)V
    .locals 0

    .line 579
    invoke-virtual {p0}, Lcom/android/settings/applications/AppStorageSettings;->handleClearCacheClick()V

    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .line 249
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 252
    iget-object v1, p0, Lcom/android/settings/applications/AppStorageSettings;->mCandidates:[Landroid/os/storage/VolumeInfo;

    aget-object p2, v1, p2

    .line 253
    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/applications/AppInfoBase;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getPackageCurrentVolume(Landroid/content/pm/ApplicationInfo;)Landroid/os/storage/VolumeInfo;

    move-result-object v1

    .line 255
    invoke-static {p2, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 256
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/settings/deviceinfo/StorageWizardMoveConfirm;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 257
    invoke-virtual {p2}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object p2

    const-string v0, "android.os.storage.extra.VOLUME_ID"

    invoke-virtual {v1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 258
    iget-object p2, p0, Lcom/android/settings/applications/AppInfoBase;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object p2, p2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object p2, p2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v0, "android.intent.extra.PACKAGE_NAME"

    invoke-virtual {v1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 259
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 261
    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 224
    iget-object v0, p0, Lcom/android/settings/applications/AppStorageSettings;->mChangeStorageButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/applications/AppStorageSettings;->mDialogBuilder:Landroidx/appcompat/app/AlertDialog$Builder;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/settings/applications/AppStorageSettings;->isMoveInProgress()Z

    move-result v0

    if-nez v0, :cond_0

    .line 225
    iget-object p0, p0, Lcom/android/settings/applications/AppStorageSettings;->mDialogBuilder:Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    goto :goto_0

    .line 226
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/AppStorageSettings;->mClearUriButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_2

    .line 227
    iget-object p1, p0, Lcom/android/settings/applications/AppInfoBase;->mAppsControlDisallowedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/android/settings/applications/AppInfoBase;->mAppsControlDisallowedBySystem:Z

    if-nez p1, :cond_1

    .line 229
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settings/applications/AppInfoBase;->mAppsControlDisallowedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    .line 228
    invoke-static {p1, p0}, Lcom/android/settingslib/RestrictedLockUtils;->sendShowAdminSupportDetailsIntent(Landroid/content/Context;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    goto :goto_0

    .line 231
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/applications/AppStorageSettings;->clearUriPermissions()V

    :cond_2
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 136
    invoke-super {p0, p1}, Lcom/android/settings/applications/AppInfoBase;->onCreate(Landroid/os/Bundle;)V

    if-eqz p1, :cond_2

    const/4 v0, 0x0

    const-string v1, "cache_cleared"

    .line 138
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/applications/AppStorageSettings;->mCacheCleared:Z

    const-string v1, "data_cleared"

    .line 139
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/applications/AppStorageSettings;->mDataCleared:Z

    .line 140
    iget-boolean p1, p0, Lcom/android/settings/applications/AppStorageSettings;->mCacheCleared:Z

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lcom/android/settings/applications/AppStorageSettings;->mDataCleared:Z

    if-eqz p1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    iput-boolean v0, p0, Lcom/android/settings/applications/AppStorageSettings;->mCacheCleared:Z

    :cond_2
    const p1, 0x7f15001d

    .line 143
    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    .line 144
    invoke-direct {p0}, Lcom/android/settings/applications/AppStorageSettings;->setupViews()V

    .line 145
    invoke-direct {p0}, Lcom/android/settings/applications/AppStorageSettings;->initMoveDialog()V

    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroidx/loader/content/Loader;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroidx/loader/content/Loader<",
            "Lcom/android/settingslib/applications/StorageStatsSource$AppStorageStats;",
            ">;"
        }
    .end annotation

    .line 522
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 523
    new-instance p2, Lcom/android/settings/applications/FetchPackageStorageAsyncLoader;

    new-instance v0, Lcom/android/settingslib/applications/StorageStatsSource;

    invoke-direct {v0, p1}, Lcom/android/settingslib/applications/StorageStatsSource;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/android/settings/applications/AppStorageSettings;->mInfo:Landroid/content/pm/ApplicationInfo;

    iget p0, p0, Lcom/android/settings/applications/AppInfoBase;->mUserId:I

    .line 524
    invoke-static {p0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p0

    invoke-direct {p2, p1, v0, v1, p0}, Lcom/android/settings/applications/FetchPackageStorageAsyncLoader;-><init>(Landroid/content/Context;Lcom/android/settingslib/applications/StorageStatsSource;Landroid/content/pm/ApplicationInfo;Landroid/os/UserHandle;)V

    return-object p2
.end method

.method public onLoadFinished(Landroidx/loader/content/Loader;Lcom/android/settingslib/applications/StorageStatsSource$AppStorageStats;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/loader/content/Loader<",
            "Lcom/android/settingslib/applications/StorageStatsSource$AppStorageStats;",
            ">;",
            "Lcom/android/settingslib/applications/StorageStatsSource$AppStorageStats;",
            ")V"
        }
    .end annotation

    .line 529
    iget-object p1, p0, Lcom/android/settings/applications/AppStorageSettings;->mSizeController:Lcom/android/settings/applications/AppStorageSizesController;

    invoke-virtual {p1, p2}, Lcom/android/settings/applications/AppStorageSizesController;->setResult(Lcom/android/settingslib/applications/StorageStatsSource$AppStorageStats;)V

    .line 530
    invoke-virtual {p0, p2}, Lcom/android/settings/applications/AppStorageSettings;->updateUiWithSize(Lcom/android/settingslib/applications/StorageStatsSource$AppStorageStats;)V

    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroidx/loader/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .line 69
    check-cast p2, Lcom/android/settingslib/applications/StorageStatsSource$AppStorageStats;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/applications/AppStorageSettings;->onLoadFinished(Landroidx/loader/content/Loader;Lcom/android/settingslib/applications/StorageStatsSource$AppStorageStats;)V

    return-void
.end method

.method public onLoaderReset(Landroidx/loader/content/Loader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/loader/content/Loader<",
            "Lcom/android/settingslib/applications/StorageStatsSource$AppStorageStats;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onPackageSizeChanged(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onResume()V
    .locals 0

    .line 150
    invoke-super {p0}, Lcom/android/settings/applications/AppInfoBase;->onResume()V

    .line 151
    invoke-direct {p0}, Lcom/android/settings/applications/AppStorageSettings;->updateSize()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 156
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 157
    iget-boolean v0, p0, Lcom/android/settings/applications/AppStorageSettings;->mCacheCleared:Z

    const-string v1, "cache_cleared"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 158
    iget-boolean p0, p0, Lcom/android/settings/applications/AppStorageSettings;->mDataCleared:Z

    const-string v0, "data_cleared"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method protected refreshUi()Z
    .locals 3

    .line 266
    invoke-virtual {p0}, Lcom/android/settings/applications/AppInfoBase;->retrieveAppEntry()Ljava/lang/String;

    .line 267
    iget-object v0, p0, Lcom/android/settings/applications/AppInfoBase;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 270
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/AppStorageSettings;->mSizeController:Lcom/android/settings/applications/AppStorageSizesController;

    invoke-virtual {v0}, Lcom/android/settings/applications/AppStorageSizesController;->getLastResult()Lcom/android/settingslib/applications/StorageStatsSource$AppStorageStats;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/AppStorageSettings;->updateUiWithSize(Lcom/android/settingslib/applications/StorageStatsSource$AppStorageStats;)V

    .line 271
    invoke-direct {p0}, Lcom/android/settings/applications/AppStorageSettings;->refreshGrantedUriPermissions()V

    .line 273
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/applications/AppInfoBase;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v1, v1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    .line 274
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getPackageCurrentVolume(Landroid/content/pm/ApplicationInfo;)Landroid/os/storage/VolumeInfo;

    move-result-object v0

    .line 275
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Landroid/os/storage/StorageManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/StorageManager;

    .line 276
    iget-object v2, p0, Lcom/android/settings/applications/AppStorageSettings;->mStorageUsed:Landroidx/preference/Preference;

    invoke-virtual {v1, v0}, Landroid/os/storage/StorageManager;->getBestVolumeDescription(Landroid/os/storage/VolumeInfo;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 278
    invoke-direct {p0}, Lcom/android/settings/applications/AppStorageSettings;->refreshButtons()V

    const/4 p0, 0x1

    return p0
.end method

.method updateUiWithSize(Lcom/android/settingslib/applications/StorageStatsSource$AppStorageStats;)V
    .locals 8

    .line 554
    iget-boolean v0, p0, Lcom/android/settings/applications/AppStorageSettings;->mCacheCleared:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 555
    iget-object v0, p0, Lcom/android/settings/applications/AppStorageSettings;->mSizeController:Lcom/android/settings/applications/AppStorageSizesController;

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/AppStorageSizesController;->setCacheCleared(Z)V

    .line 557
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/applications/AppStorageSettings;->mDataCleared:Z

    if-eqz v0, :cond_1

    .line 558
    iget-object v0, p0, Lcom/android/settings/applications/AppStorageSettings;->mSizeController:Lcom/android/settings/applications/AppStorageSizesController;

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/AppStorageSizesController;->setDataCleared(Z)V

    .line 561
    :cond_1
    iget-object v0, p0, Lcom/android/settings/applications/AppStorageSettings;->mSizeController:Lcom/android/settings/applications/AppStorageSizesController;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/settings/applications/AppStorageSizesController;->updateUi(Landroid/content/Context;)V

    const/4 v0, 0x0

    if-nez p1, :cond_2

    .line 564
    iget-object p1, p0, Lcom/android/settings/applications/AppStorageSettings;->mButtonsPref:Lcom/android/settingslib/widget/ActionButtonsPreference;

    invoke-virtual {p1, v0}, Lcom/android/settingslib/widget/ActionButtonsPreference;->setButton1Enabled(Z)Lcom/android/settingslib/widget/ActionButtonsPreference;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/android/settingslib/widget/ActionButtonsPreference;->setButton2Enabled(Z)Lcom/android/settingslib/widget/ActionButtonsPreference;

    goto :goto_3

    .line 566
    :cond_2
    invoke-interface {p1}, Lcom/android/settingslib/applications/StorageStatsSource$AppStorageStats;->getCacheBytes()J

    move-result-wide v2

    .line 567
    invoke-interface {p1}, Lcom/android/settingslib/applications/StorageStatsSource$AppStorageStats;->getDataBytes()J

    move-result-wide v4

    sub-long/2addr v4, v2

    const-wide/16 v6, 0x0

    cmp-long p1, v4, v6

    if-lez p1, :cond_4

    .line 569
    iget-boolean p1, p0, Lcom/android/settings/applications/AppStorageSettings;->mCanClearData:Z

    if-eqz p1, :cond_4

    iget-boolean p1, p0, Lcom/android/settings/applications/AppStorageSettings;->mDataCleared:Z

    if-eqz p1, :cond_3

    goto :goto_0

    .line 572
    :cond_3
    iget-object p1, p0, Lcom/android/settings/applications/AppStorageSettings;->mButtonsPref:Lcom/android/settingslib/widget/ActionButtonsPreference;

    invoke-virtual {p1, v1}, Lcom/android/settingslib/widget/ActionButtonsPreference;->setButton1Enabled(Z)Lcom/android/settingslib/widget/ActionButtonsPreference;

    move-result-object p1

    new-instance v4, Lcom/android/settings/applications/-$$Lambda$AppStorageSettings$n1EpAla7gNI7Nnl-O3UD0UWSgTo;

    invoke-direct {v4, p0}, Lcom/android/settings/applications/-$$Lambda$AppStorageSettings$n1EpAla7gNI7Nnl-O3UD0UWSgTo;-><init>(Lcom/android/settings/applications/AppStorageSettings;)V

    .line 573
    invoke-virtual {p1, v4}, Lcom/android/settingslib/widget/ActionButtonsPreference;->setButton1OnClickListener(Landroid/view/View$OnClickListener;)Lcom/android/settingslib/widget/ActionButtonsPreference;

    goto :goto_1

    .line 570
    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/android/settings/applications/AppStorageSettings;->mButtonsPref:Lcom/android/settingslib/widget/ActionButtonsPreference;

    invoke-virtual {p1, v0}, Lcom/android/settingslib/widget/ActionButtonsPreference;->setButton1Enabled(Z)Lcom/android/settingslib/widget/ActionButtonsPreference;

    :goto_1
    cmp-long p1, v2, v6

    if-lez p1, :cond_6

    .line 575
    iget-boolean p1, p0, Lcom/android/settings/applications/AppStorageSettings;->mCacheCleared:Z

    if-eqz p1, :cond_5

    goto :goto_2

    .line 578
    :cond_5
    iget-object p1, p0, Lcom/android/settings/applications/AppStorageSettings;->mButtonsPref:Lcom/android/settingslib/widget/ActionButtonsPreference;

    invoke-virtual {p1, v1}, Lcom/android/settingslib/widget/ActionButtonsPreference;->setButton2Enabled(Z)Lcom/android/settingslib/widget/ActionButtonsPreference;

    move-result-object p1

    new-instance v1, Lcom/android/settings/applications/-$$Lambda$AppStorageSettings$DjRyx_XFfzsxe3o1nZS2usao_fc;

    invoke-direct {v1, p0}, Lcom/android/settings/applications/-$$Lambda$AppStorageSettings$DjRyx_XFfzsxe3o1nZS2usao_fc;-><init>(Lcom/android/settings/applications/AppStorageSettings;)V

    .line 579
    invoke-virtual {p1, v1}, Lcom/android/settingslib/widget/ActionButtonsPreference;->setButton2OnClickListener(Landroid/view/View$OnClickListener;)Lcom/android/settingslib/widget/ActionButtonsPreference;

    goto :goto_3

    .line 576
    :cond_6
    :goto_2
    iget-object p1, p0, Lcom/android/settings/applications/AppStorageSettings;->mButtonsPref:Lcom/android/settingslib/widget/ActionButtonsPreference;

    invoke-virtual {p1, v0}, Lcom/android/settingslib/widget/ActionButtonsPreference;->setButton2Enabled(Z)Lcom/android/settingslib/widget/ActionButtonsPreference;

    .line 582
    :goto_3
    iget-boolean p1, p0, Lcom/android/settings/applications/AppInfoBase;->mAppsControlDisallowedBySystem:Z

    if-eqz p1, :cond_7

    .line 583
    iget-object p0, p0, Lcom/android/settings/applications/AppStorageSettings;->mButtonsPref:Lcom/android/settingslib/widget/ActionButtonsPreference;

    invoke-virtual {p0, v0}, Lcom/android/settingslib/widget/ActionButtonsPreference;->setButton1Enabled(Z)Lcom/android/settingslib/widget/ActionButtonsPreference;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/android/settingslib/widget/ActionButtonsPreference;->setButton2Enabled(Z)Lcom/android/settingslib/widget/ActionButtonsPreference;

    :cond_7
    return-void
.end method
