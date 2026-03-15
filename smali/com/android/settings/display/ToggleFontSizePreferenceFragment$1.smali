.class Lcom/android/settings/display/ToggleFontSizePreferenceFragment$1;
.super Lcom/android/settings/search/BaseSearchIndexProvider;
.source "ToggleFontSizePreferenceFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/display/ToggleFontSizePreferenceFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 119
    invoke-direct {p0}, Lcom/android/settings/search/BaseSearchIndexProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getRawDataToIndex(Landroid/content/Context;Z)Ljava/util/List;
    .locals 2
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

    .line 123
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 124
    new-instance p2, Lcom/android/settings/search/SearchIndexableRaw;

    invoke-direct {p2, p1}, Lcom/android/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    const v0, 0x7f120f31

    .line 125
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lcom/android/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 126
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/android/settings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    const-string v0, "font_size_setting_screen"

    .line 127
    iput-object v0, p2, Landroid/provider/SearchIndexableData;->key:Ljava/lang/String;

    const v0, 0x7f12081b

    .line 128
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Lcom/android/settings/search/SearchIndexableRaw;->keywords:Ljava/lang/String;

    .line 129
    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method
