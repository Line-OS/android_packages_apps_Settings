.class public Lcom/android/settings/panel/MediaOutputPanel;
.super Ljava/lang/Object;
.source "MediaOutputPanel.java"

# interfaces
.implements Lcom/android/settings/panel/PanelContent;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mPackageName:Ljava/lang/String;


# direct methods
.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/panel/MediaOutputPanel;->mContext:Landroid/content/Context;

    .line 50
    iput-object p2, p0, Lcom/android/settings/panel/MediaOutputPanel;->mPackageName:Ljava/lang/String;

    return-void
.end method

.method public static create(Landroid/content/Context;Ljava/lang/String;)Lcom/android/settings/panel/MediaOutputPanel;
    .locals 1

    .line 45
    new-instance v0, Lcom/android/settings/panel/MediaOutputPanel;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/panel/MediaOutputPanel;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x679

    return p0
.end method

.method public getSeeMoreIntent()Landroid/content/Intent;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getSlices()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 61
    sget-object v1, Lcom/android/settings/slices/CustomSliceRegistry;->MEDIA_OUTPUT_SLICE_URI:Landroid/net/Uri;

    .line 63
    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    .line 64
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->clearQuery()Landroid/net/Uri$Builder;

    move-result-object v1

    iget-object p0, p0, Lcom/android/settings/panel/MediaOutputPanel;->mPackageName:Ljava/lang/String;

    const-string v2, "media_package_name"

    .line 65
    invoke-virtual {v1, v2, p0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    .line 66
    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    sput-object p0, Lcom/android/settings/slices/CustomSliceRegistry;->MEDIA_OUTPUT_SLICE_URI:Landroid/net/Uri;

    .line 67
    sget-object p0, Lcom/android/settings/slices/CustomSliceRegistry;->MEDIA_OUTPUT_SLICE_URI:Landroid/net/Uri;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .line 55
    iget-object p0, p0, Lcom/android/settings/panel/MediaOutputPanel;->mContext:Landroid/content/Context;

    const v0, 0x7f12096b

    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method
