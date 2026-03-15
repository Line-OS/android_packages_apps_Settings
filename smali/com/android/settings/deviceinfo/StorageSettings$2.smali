.class Lcom/android/settings/deviceinfo/StorageSettings$2;
.super Lcom/android/settings/search/BaseSearchIndexProvider;
.source "StorageSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/deviceinfo/StorageSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 546
    invoke-direct {p0}, Lcom/android/settings/search/BaseSearchIndexProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getRawDataToIndex(Landroid/content/Context;Z)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)",
            "Ljava/util/List<",
            "Lcom/android/settings/search/SearchIndexableRaw;",
            ">;"
        }
    .end annotation

    .line 550
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 552
    new-instance p2, Lcom/android/settings/search/SearchIndexableRaw;

    invoke-direct {p2, p1}, Lcom/android/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    const v0, 0x7f120e75

    .line 553
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lcom/android/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    const-string v1, "storage_settings"

    .line 554
    iput-object v1, p2, Landroid/provider/SearchIndexableData;->key:Ljava/lang/String;

    .line 555
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lcom/android/settings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    const v1, 0x7f12083f

    .line 556
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lcom/android/settings/search/SearchIndexableRaw;->keywords:Ljava/lang/String;

    .line 557
    invoke-interface {p0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 559
    new-instance p2, Lcom/android/settings/search/SearchIndexableRaw;

    invoke-direct {p2, p1}, Lcom/android/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    const v1, 0x7f1207e3

    .line 560
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lcom/android/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    const-string v1, "storage_settings_internal_storage"

    .line 561
    iput-object v1, p2, Landroid/provider/SearchIndexableData;->key:Ljava/lang/String;

    .line 562
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lcom/android/settings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 563
    invoke-interface {p0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 565
    new-instance p2, Lcom/android/settings/search/SearchIndexableRaw;

    invoke-direct {p2, p1}, Lcom/android/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 566
    const-class v1, Landroid/os/storage/StorageManager;

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/StorageManager;

    .line 567
    invoke-virtual {v1}, Landroid/os/storage/StorageManager;->getVolumes()Ljava/util/List;

    move-result-object v2

    .line 568
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/storage/VolumeInfo;

    .line 569
    invoke-static {v3}, Lcom/android/settings/deviceinfo/StorageSettings;->access$000(Landroid/os/storage/VolumeInfo;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 570
    invoke-virtual {v1, v3}, Landroid/os/storage/StorageManager;->getBestVolumeDescription(Landroid/os/storage/VolumeInfo;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p2, Lcom/android/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 571
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "storage_settings_volume_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v3, Landroid/os/storage/VolumeInfo;->id:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p2, Landroid/provider/SearchIndexableData;->key:Ljava/lang/String;

    .line 572
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p2, Lcom/android/settings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 573
    invoke-interface {p0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 577
    :cond_1
    new-instance p2, Lcom/android/settings/search/SearchIndexableRaw;

    invoke-direct {p2, p1}, Lcom/android/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    const v1, 0x7f12098b

    .line 578
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lcom/android/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    const-string v1, "storage_settings_memory_size"

    .line 579
    iput-object v1, p2, Landroid/provider/SearchIndexableData;->key:Ljava/lang/String;

    .line 580
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lcom/android/settings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 581
    invoke-interface {p0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 583
    new-instance p2, Lcom/android/settings/search/SearchIndexableRaw;

    invoke-direct {p2, p1}, Lcom/android/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    const v1, 0x7f120977

    .line 584
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lcom/android/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    const-string v1, "storage_settings_memory_available"

    .line 585
    iput-object v1, p2, Landroid/provider/SearchIndexableData;->key:Ljava/lang/String;

    .line 586
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lcom/android/settings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 587
    invoke-interface {p0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 589
    new-instance p2, Lcom/android/settings/search/SearchIndexableRaw;

    invoke-direct {p2, p1}, Lcom/android/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    const v1, 0x7f120976

    .line 590
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lcom/android/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    const-string v1, "storage_settings_apps_space"

    .line 591
    iput-object v1, p2, Landroid/provider/SearchIndexableData;->key:Ljava/lang/String;

    .line 592
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lcom/android/settings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 593
    invoke-interface {p0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 595
    new-instance p2, Lcom/android/settings/search/SearchIndexableRaw;

    invoke-direct {p2, p1}, Lcom/android/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    const v1, 0x7f12097e

    .line 596
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lcom/android/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    const-string v1, "storage_settings_dcim_space"

    .line 597
    iput-object v1, p2, Landroid/provider/SearchIndexableData;->key:Ljava/lang/String;

    .line 598
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lcom/android/settings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 599
    invoke-interface {p0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 601
    new-instance p2, Lcom/android/settings/search/SearchIndexableRaw;

    invoke-direct {p2, p1}, Lcom/android/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    const v1, 0x7f120988

    .line 602
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lcom/android/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    const-string v1, "storage_settings_music_space"

    .line 603
    iput-object v1, p2, Landroid/provider/SearchIndexableData;->key:Ljava/lang/String;

    .line 604
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lcom/android/settings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 605
    invoke-interface {p0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 607
    new-instance p2, Lcom/android/settings/search/SearchIndexableRaw;

    invoke-direct {p2, p1}, Lcom/android/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    const v1, 0x7f120986

    .line 608
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lcom/android/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    const-string v1, "storage_settings_misc_space"

    .line 609
    iput-object v1, p2, Landroid/provider/SearchIndexableData;->key:Ljava/lang/String;

    .line 610
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/android/settings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 611
    invoke-interface {p0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 613
    new-instance p2, Lcom/android/settings/search/SearchIndexableRaw;

    invoke-direct {p2, p1}, Lcom/android/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    const v0, 0x7f120e65

    .line 614
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lcom/android/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    const-string v1, "storage_settings_free_space"

    .line 615
    iput-object v1, p2, Landroid/provider/SearchIndexableData;->key:Ljava/lang/String;

    .line 616
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/android/settings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    const-string v0, "android.os.storage.action.MANAGE_STORAGE"

    .line 618
    iput-object v0, p2, Landroid/provider/SearchIndexableData;->intentAction:Ljava/lang/String;

    const v0, 0x7f120450

    .line 620
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Landroid/provider/SearchIndexableData;->intentTargetPackage:Ljava/lang/String;

    const v0, 0x7f12044f

    .line 622
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Landroid/provider/SearchIndexableData;->intentTargetClass:Ljava/lang/String;

    .line 623
    invoke-interface {p0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method
