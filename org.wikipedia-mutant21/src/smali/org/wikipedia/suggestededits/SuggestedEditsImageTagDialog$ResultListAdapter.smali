.class final Lorg/wikipedia/suggestededits/SuggestedEditsImageTagDialog$ResultListAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SuggestedEditsImageTagDialog.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/wikipedia/suggestededits/SuggestedEditsImageTagDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ResultListAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lorg/wikipedia/suggestededits/SuggestedEditsImageTagDialog$ResultItemHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private results:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lorg/wikipedia/dataclient/mwapi/MwQueryPage$ImageLabel;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/wikipedia/suggestededits/SuggestedEditsImageTagDialog;


# direct methods
.method public constructor <init>(Lorg/wikipedia/suggestededits/SuggestedEditsImageTagDialog;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lorg/wikipedia/dataclient/mwapi/MwQueryPage$ImageLabel;",
            ">;)V"
        }
    .end annotation

    const-string v0, "results"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 190
    iput-object p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagDialog$ResultListAdapter;->this$0:Lorg/wikipedia/suggestededits/SuggestedEditsImageTagDialog;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    iput-object p2, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagDialog$ResultListAdapter;->results:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 196
    iget-object v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagDialog$ResultListAdapter;->results:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 190
    check-cast p1, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagDialog$ResultItemHolder;

    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagDialog$ResultListAdapter;->onBindViewHolder(Lorg/wikipedia/suggestededits/SuggestedEditsImageTagDialog$ResultItemHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lorg/wikipedia/suggestededits/SuggestedEditsImageTagDialog$ResultItemHolder;I)V
    .locals 1

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 207
    iget-object v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagDialog$ResultListAdapter;->results:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/wikipedia/dataclient/mwapi/MwQueryPage$ImageLabel;

    invoke-virtual {p1, p2}, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagDialog$ResultItemHolder;->bindItem(Lorg/wikipedia/dataclient/mwapi/MwQueryPage$ImageLabel;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 190
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagDialog$ResultListAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/wikipedia/suggestededits/SuggestedEditsImageTagDialog$ResultItemHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/wikipedia/suggestededits/SuggestedEditsImageTagDialog$ResultItemHolder;
    .locals 2

    const-string p2, "parent"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 200
    iget-object p2, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagDialog$ResultListAdapter;->this$0:Lorg/wikipedia/suggestededits/SuggestedEditsImageTagDialog;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0c0091

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 201
    new-instance p2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v0, -0x1

    const/4 v1, -0x2

    invoke-direct {p2, v0, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    const-string v0, "view"

    .line 202
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 203
    new-instance p2, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagDialog$ResultItemHolder;

    iget-object v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagDialog$ResultListAdapter;->this$0:Lorg/wikipedia/suggestededits/SuggestedEditsImageTagDialog;

    invoke-direct {p2, v0, p1}, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagDialog$ResultItemHolder;-><init>(Lorg/wikipedia/suggestededits/SuggestedEditsImageTagDialog;Landroid/view/View;)V

    return-object p2
.end method

.method public final setResults(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lorg/wikipedia/dataclient/mwapi/MwQueryPage$ImageLabel;",
            ">;)V"
        }
    .end annotation

    const-string v0, "results"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 192
    iput-object p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagDialog$ResultListAdapter;->results:Ljava/util/List;

    return-void
.end method
