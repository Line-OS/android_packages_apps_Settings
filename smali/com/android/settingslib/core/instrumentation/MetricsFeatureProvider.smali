.class public Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;
.super Ljava/lang/Object;
.source "MetricsFeatureProvider.java"


# instance fields
.field protected mLoggerWriters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/instrumentation/LogWriter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->mLoggerWriters:Ljava/util/List;

    .line 44
    invoke-virtual {p0}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->installLogWriters()V

    return-void
.end method


# virtual methods
.method public action(IIILjava/lang/String;I)V
    .locals 7

    .line 104
    iget-object p0, p0, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->mLoggerWriters:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/android/settingslib/core/instrumentation/LogWriter;

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    .line 105
    invoke-interface/range {v1 .. v6}, Lcom/android/settingslib/core/instrumentation/LogWriter;->action(IIILjava/lang/String;I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public action(Landroid/content/Context;II)V
    .locals 1

    .line 110
    iget-object p0, p0, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->mLoggerWriters:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/core/instrumentation/LogWriter;

    .line 111
    invoke-interface {v0, p1, p2, p3}, Lcom/android/settingslib/core/instrumentation/LogWriter;->action(Landroid/content/Context;II)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public action(Landroid/content/Context;ILjava/lang/String;)V
    .locals 1

    .line 95
    iget-object p0, p0, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->mLoggerWriters:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/core/instrumentation/LogWriter;

    .line 96
    invoke-interface {v0, p1, p2, p3}, Lcom/android/settingslib/core/instrumentation/LogWriter;->action(Landroid/content/Context;ILjava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public action(Landroid/content/Context;IZ)V
    .locals 1

    .line 116
    iget-object p0, p0, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->mLoggerWriters:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/core/instrumentation/LogWriter;

    .line 117
    invoke-interface {v0, p1, p2, p3}, Lcom/android/settingslib/core/instrumentation/LogWriter;->action(Landroid/content/Context;IZ)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public varargs action(Landroid/content/Context;I[Landroid/util/Pair;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I[",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 86
    iget-object p0, p0, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->mLoggerWriters:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/core/instrumentation/LogWriter;

    .line 87
    invoke-interface {v0, p1, p2, p3}, Lcom/android/settingslib/core/instrumentation/LogWriter;->action(Landroid/content/Context;I[Landroid/util/Pair;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getAttribution(Landroid/app/Activity;)I
    .locals 1

    const/4 p0, 0x0

    if-nez p1, :cond_0

    return p0

    .line 62
    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-nez p1, :cond_1

    return p0

    :cond_1
    const-string v0, ":settings:source_metrics"

    .line 66
    invoke-virtual {p1, v0, p0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getMetricsCategory(Ljava/lang/Object;)I
    .locals 0

    if-eqz p1, :cond_1

    .line 122
    instance-of p0, p1, Lcom/android/settingslib/core/instrumentation/Instrumentable;

    if-nez p0, :cond_0

    goto :goto_0

    .line 125
    :cond_0
    check-cast p1, Lcom/android/settingslib/core/instrumentation/Instrumentable;

    invoke-interface {p1}, Lcom/android/settingslib/core/instrumentation/Instrumentable;->getMetricsCategory()I

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public hidden(Landroid/content/Context;I)V
    .locals 1

    .line 77
    iget-object p0, p0, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->mLoggerWriters:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/core/instrumentation/LogWriter;

    .line 78
    invoke-interface {v0, p1, p2}, Lcom/android/settingslib/core/instrumentation/LogWriter;->hidden(Landroid/content/Context;I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected installLogWriters()V
    .locals 1

    .line 48
    iget-object p0, p0, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->mLoggerWriters:Ljava/util/List;

    new-instance v0, Lcom/android/settingslib/core/instrumentation/EventLogWriter;

    invoke-direct {v0}, Lcom/android/settingslib/core/instrumentation/EventLogWriter;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public logDashboardStartIntent(Landroid/content/Context;Landroid/content/Intent;I)V
    .locals 7

    if-nez p2, :cond_0

    return-void

    .line 133
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_2

    .line 135
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    .line 136
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    :cond_1
    const/16 v3, 0x33e

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move v2, p3

    .line 140
    invoke-virtual/range {v1 .. v6}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(IIILjava/lang/String;I)V

    return-void

    .line 146
    :cond_2
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    :cond_3
    const/16 v3, 0x33e

    const/4 v4, 0x0

    .line 154
    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    move-object v1, p0

    move v2, p3

    .line 151
    invoke-virtual/range {v1 .. v6}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(IIILjava/lang/String;I)V

    return-void
.end method

.method public visible(Landroid/content/Context;II)V
    .locals 1

    .line 71
    iget-object p0, p0, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->mLoggerWriters:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/core/instrumentation/LogWriter;

    .line 72
    invoke-interface {v0, p1, p2, p3}, Lcom/android/settingslib/core/instrumentation/LogWriter;->visible(Landroid/content/Context;II)V

    goto :goto_0

    :cond_0
    return-void
.end method
