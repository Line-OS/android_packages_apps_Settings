.class public Lcom/android/settings/panel/PanelSlicesAdapter$SliceRowViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "PanelSlicesAdapter.java"

# interfaces
.implements Lcom/google/android/setupdesign/DividerItemDecoration$DividedViewHolder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/panel/PanelSlicesAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SliceRowViewHolder"
.end annotation


# instance fields
.field private mDividerAllowedAbove:Z

.field final sliceView:Landroidx/slice/widget/SliceView;

.field final synthetic this$0:Lcom/android/settings/panel/PanelSlicesAdapter;


# direct methods
.method public constructor <init>(Lcom/android/settings/panel/PanelSlicesAdapter;Landroid/view/View;)V
    .locals 1

    .line 108
    iput-object p1, p0, Lcom/android/settings/panel/PanelSlicesAdapter$SliceRowViewHolder;->this$0:Lcom/android/settings/panel/PanelSlicesAdapter;

    .line 109
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const/4 p1, 0x1

    .line 103
    iput-boolean p1, p0, Lcom/android/settings/panel/PanelSlicesAdapter$SliceRowViewHolder;->mDividerAllowedAbove:Z

    const v0, 0x7f0a03eb

    .line 110
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/slice/widget/SliceView;

    iput-object p2, p0, Lcom/android/settings/panel/PanelSlicesAdapter$SliceRowViewHolder;->sliceView:Landroidx/slice/widget/SliceView;

    .line 111
    iget-object p2, p0, Lcom/android/settings/panel/PanelSlicesAdapter$SliceRowViewHolder;->sliceView:Landroidx/slice/widget/SliceView;

    const/4 v0, 0x2

    invoke-virtual {p2, v0}, Landroidx/slice/widget/SliceView;->setMode(I)V

    .line 112
    iget-object p0, p0, Lcom/android/settings/panel/PanelSlicesAdapter$SliceRowViewHolder;->sliceView:Landroidx/slice/widget/SliceView;

    invoke-virtual {p0, p1}, Landroidx/slice/widget/SliceView;->showTitleItems(Z)V

    return-void
.end method


# virtual methods
.method public isDividerAllowedAbove()Z
    .locals 0

    .line 141
    iget-boolean p0, p0, Lcom/android/settings/panel/PanelSlicesAdapter$SliceRowViewHolder;->mDividerAllowedAbove:Z

    return p0
.end method

.method public isDividerAllowedBelow()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public synthetic lambda$onBind$0$PanelSlicesAdapter$SliceRowViewHolder(Landroidx/lifecycle/LiveData;Landroidx/slice/widget/EventInfo;Landroidx/slice/SliceItem;)V
    .locals 6

    .line 127
    iget-object p3, p0, Lcom/android/settings/panel/PanelSlicesAdapter$SliceRowViewHolder;->sliceView:Landroidx/slice/widget/SliceView;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object p3

    .line 128
    invoke-virtual {p3}, Lcom/android/settings/overlay/FeatureFactory;->getMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/panel/PanelSlicesAdapter$SliceRowViewHolder;->this$0:Lcom/android/settings/panel/PanelSlicesAdapter;

    .line 131
    invoke-static {p0}, Lcom/android/settings/panel/PanelSlicesAdapter;->access$100(Lcom/android/settings/panel/PanelSlicesAdapter;)I

    move-result v3

    .line 132
    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/slice/Slice;

    invoke-virtual {p0}, Landroidx/slice/Slice;->getUri()Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v4

    iget v5, p2, Landroidx/slice/widget/EventInfo;->actionType:I

    const/4 v1, 0x0

    const/16 v2, 0x67a

    .line 129
    invoke-virtual/range {v0 .. v5}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(IIILjava/lang/String;I)V

    return-void
.end method

.method public onBind(Landroidx/lifecycle/LiveData;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/LiveData<",
            "Landroidx/slice/Slice;",
            ">;)V"
        }
    .end annotation

    .line 116
    iget-object v0, p0, Lcom/android/settings/panel/PanelSlicesAdapter$SliceRowViewHolder;->this$0:Lcom/android/settings/panel/PanelSlicesAdapter;

    invoke-static {v0}, Lcom/android/settings/panel/PanelSlicesAdapter;->access$000(Lcom/android/settings/panel/PanelSlicesAdapter;)Lcom/android/settings/panel/PanelFragment;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/panel/PanelSlicesAdapter$SliceRowViewHolder;->sliceView:Landroidx/slice/widget/SliceView;

    invoke-virtual {p1, v0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 119
    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/slice/Slice;

    if-eqz v0, :cond_0

    .line 120
    invoke-virtual {v0}, Landroidx/slice/Slice;->getUri()Landroid/net/Uri;

    move-result-object v0

    sget-object v1, Lcom/android/settings/slices/CustomSliceRegistry;->MEDIA_OUTPUT_INDICATOR_SLICE_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 121
    iput-boolean v0, p0, Lcom/android/settings/panel/PanelSlicesAdapter$SliceRowViewHolder;->mDividerAllowedAbove:Z

    .line 125
    :cond_0
    iget-object v0, p0, Lcom/android/settings/panel/PanelSlicesAdapter$SliceRowViewHolder;->sliceView:Landroidx/slice/widget/SliceView;

    new-instance v1, Lcom/android/settings/panel/-$$Lambda$PanelSlicesAdapter$SliceRowViewHolder$ouV_HuHVg07ybpD3Y7B9ziPSnYw;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/panel/-$$Lambda$PanelSlicesAdapter$SliceRowViewHolder$ouV_HuHVg07ybpD3Y7B9ziPSnYw;-><init>(Lcom/android/settings/panel/PanelSlicesAdapter$SliceRowViewHolder;Landroidx/lifecycle/LiveData;)V

    invoke-virtual {v0, v1}, Landroidx/slice/widget/SliceView;->setOnSliceActionListener(Landroidx/slice/widget/SliceView$OnSliceActionListener;)V

    return-void
.end method
