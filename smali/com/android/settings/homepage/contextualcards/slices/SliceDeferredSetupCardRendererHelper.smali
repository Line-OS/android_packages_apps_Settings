.class Lcom/android/settings/homepage/contextualcards/slices/SliceDeferredSetupCardRendererHelper;
.super Ljava/lang/Object;
.source "SliceDeferredSetupCardRendererHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/homepage/contextualcards/slices/SliceDeferredSetupCardRendererHelper$DeferredSetupCardViewHolder;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/android/settings/homepage/contextualcards/slices/SliceDeferredSetupCardRendererHelper;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method bindView(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Lcom/android/settings/homepage/contextualcards/ContextualCard;Landroidx/slice/Slice;)V
    .locals 4

    .line 58
    check-cast p1, Lcom/android/settings/homepage/contextualcards/slices/SliceDeferredSetupCardRendererHelper$DeferredSetupCardViewHolder;

    .line 59
    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/slices/SliceDeferredSetupCardRendererHelper;->mContext:Landroid/content/Context;

    invoke-static {v0, p3}, Landroidx/slice/SliceMetadata;->from(Landroid/content/Context;Landroidx/slice/Slice;)Landroidx/slice/SliceMetadata;

    move-result-object p3

    .line 60
    invoke-virtual {p3}, Landroidx/slice/SliceMetadata;->getPrimaryAction()Landroidx/slice/core/SliceAction;

    move-result-object v0

    .line 61
    iget-object v1, p1, Lcom/android/settings/homepage/contextualcards/slices/SliceDeferredSetupCardRendererHelper$DeferredSetupCardViewHolder;->icon:Landroid/widget/ImageView;

    invoke-interface {v0}, Landroidx/slice/core/SliceAction;->getIcon()Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/homepage/contextualcards/slices/SliceDeferredSetupCardRendererHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Landroidx/core/graphics/drawable/IconCompat;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 62
    iget-object v1, p1, Lcom/android/settings/homepage/contextualcards/slices/SliceDeferredSetupCardRendererHelper$DeferredSetupCardViewHolder;->title:Landroid/widget/TextView;

    invoke-interface {v0}, Landroidx/slice/core/SliceAction;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    iget-object v1, p1, Lcom/android/settings/homepage/contextualcards/slices/SliceDeferredSetupCardRendererHelper$DeferredSetupCardViewHolder;->summary:Landroid/widget/TextView;

    invoke-virtual {p3}, Landroidx/slice/SliceMetadata;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object p3

    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    iget-object p3, p1, Lcom/android/settings/homepage/contextualcards/slices/SliceDeferredSetupCardRendererHelper$DeferredSetupCardViewHolder;->button:Landroid/widget/Button;

    new-instance v1, Lcom/android/settings/homepage/contextualcards/slices/-$$Lambda$SliceDeferredSetupCardRendererHelper$D-OZ-0A1lMkUzCRoBbUlbd_xrjQ;

    invoke-direct {v1, p0, v0, p2, p1}, Lcom/android/settings/homepage/contextualcards/slices/-$$Lambda$SliceDeferredSetupCardRendererHelper$D-OZ-0A1lMkUzCRoBbUlbd_xrjQ;-><init>(Lcom/android/settings/homepage/contextualcards/slices/SliceDeferredSetupCardRendererHelper;Landroidx/slice/core/SliceAction;Lcom/android/settings/homepage/contextualcards/ContextualCard;Lcom/android/settings/homepage/contextualcards/slices/SliceDeferredSetupCardRendererHelper$DeferredSetupCardViewHolder;)V

    invoke-virtual {p3, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method createViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 54
    new-instance p0, Lcom/android/settings/homepage/contextualcards/slices/SliceDeferredSetupCardRendererHelper$DeferredSetupCardViewHolder;

    invoke-direct {p0, p1}, Lcom/android/settings/homepage/contextualcards/slices/SliceDeferredSetupCardRendererHelper$DeferredSetupCardViewHolder;-><init>(Landroid/view/View;)V

    return-object p0
.end method

.method public synthetic lambda$bindView$0$SliceDeferredSetupCardRendererHelper(Landroidx/slice/core/SliceAction;Lcom/android/settings/homepage/contextualcards/ContextualCard;Lcom/android/settings/homepage/contextualcards/slices/SliceDeferredSetupCardRendererHelper$DeferredSetupCardViewHolder;Landroid/view/View;)V
    .locals 1

    .line 66
    :try_start_0
    invoke-interface {p1}, Landroidx/slice/core/SliceAction;->getAction()Landroid/app/PendingIntent;

    move-result-object p4

    invoke-virtual {p4}, Landroid/app/PendingIntent;->send()V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 68
    :catch_0
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to start intent "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Landroidx/slice/core/SliceAction;->getTitle()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p4, "SliceDSCRendererHelper"

    invoke-static {p4, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 p1, 0x0

    const/4 p4, 0x3

    .line 71
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p3

    .line 70
    invoke-static {p2, p1, p4, p3}, Lcom/android/settings/homepage/contextualcards/logging/ContextualCardLogUtils;->buildCardClickLog(Lcom/android/settings/homepage/contextualcards/ContextualCard;III)Ljava/lang/String;

    move-result-object p1

    .line 73
    iget-object p2, p0, Lcom/android/settings/homepage/contextualcards/slices/SliceDeferredSetupCardRendererHelper;->mContext:Landroid/content/Context;

    .line 74
    invoke-static {p2}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/settings/overlay/FeatureFactory;->getMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    move-result-object p2

    .line 76
    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/slices/SliceDeferredSetupCardRendererHelper;->mContext:Landroid/content/Context;

    const/16 p3, 0x682

    invoke-virtual {p2, p0, p3, p1}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;ILjava/lang/String;)V

    return-void
.end method
