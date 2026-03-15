.class public Lcom/android/settings/gestures/GlobalActionsPanelSettings;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "GlobalActionsPanelSettings.java"


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 51
    new-instance v0, Lcom/android/settings/gestures/GlobalActionsPanelSettings$1;

    invoke-direct {v0}, Lcom/android/settings/gestures/GlobalActionsPanelSettings$1;-><init>()V

    sput-object v0, Lcom/android/settings/gestures/GlobalActionsPanelSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "GlobalActionsPanelSettings"

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x6c0

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    const p0, 0x7f15005b

    return p0
.end method
