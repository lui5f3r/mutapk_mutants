.class Lorg/wikipedia/readinglist/ReadingListsFragment$2;
.super Landroidx/recyclerview/widget/DiffUtil$Callback;
.source "ReadingListsFragment.java"


# instance fields
.field final synthetic this$0:Lorg/wikipedia/readinglist/ReadingListsFragment;

.field final synthetic val$lists:Ljava/util/List;


# direct methods
.method constructor <init>(Lorg/wikipedia/readinglist/ReadingListsFragment;Ljava/util/List;)V
    .locals 0

    .line 343
    iput-object p1, p0, Lorg/wikipedia/readinglist/ReadingListsFragment$2;->this$0:Lorg/wikipedia/readinglist/ReadingListsFragment;

    iput-object p2, p0, Lorg/wikipedia/readinglist/ReadingListsFragment$2;->val$lists:Ljava/util/List;

    invoke-direct {p0}, Landroidx/recyclerview/widget/DiffUtil$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public areContentsTheSame(II)Z
    .locals 6

    .line 364
    iget-object v0, p0, Lorg/wikipedia/readinglist/ReadingListsFragment$2;->this$0:Lorg/wikipedia/readinglist/ReadingListsFragment;

    invoke-static {v0}, Lorg/wikipedia/readinglist/ReadingListsFragment;->access$700(Lorg/wikipedia/readinglist/ReadingListsFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-le v0, p1, :cond_1

    iget-object v0, p0, Lorg/wikipedia/readinglist/ReadingListsFragment$2;->val$lists:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gt v0, p2, :cond_0

    goto/16 :goto_0

    .line 367
    :cond_0
    iget-object v0, p0, Lorg/wikipedia/readinglist/ReadingListsFragment$2;->this$0:Lorg/wikipedia/readinglist/ReadingListsFragment;

    invoke-static {v0}, Lorg/wikipedia/readinglist/ReadingListsFragment;->access$700(Lorg/wikipedia/readinglist/ReadingListsFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lorg/wikipedia/readinglist/database/ReadingList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/wikipedia/readinglist/ReadingListsFragment$2;->val$lists:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lorg/wikipedia/readinglist/database/ReadingList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/wikipedia/readinglist/ReadingListsFragment$2;->this$0:Lorg/wikipedia/readinglist/ReadingListsFragment;

    .line 368
    invoke-static {v0}, Lorg/wikipedia/readinglist/ReadingListsFragment;->access$700(Lorg/wikipedia/readinglist/ReadingListsFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/readinglist/database/ReadingList;

    invoke-virtual {v0}, Lorg/wikipedia/readinglist/database/ReadingList;->id()J

    move-result-wide v2

    iget-object v0, p0, Lorg/wikipedia/readinglist/ReadingListsFragment$2;->val$lists:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/readinglist/database/ReadingList;

    invoke-virtual {v0}, Lorg/wikipedia/readinglist/database/ReadingList;->id()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/wikipedia/readinglist/ReadingListsFragment$2;->this$0:Lorg/wikipedia/readinglist/ReadingListsFragment;

    .line 369
    invoke-static {v0}, Lorg/wikipedia/readinglist/ReadingListsFragment;->access$700(Lorg/wikipedia/readinglist/ReadingListsFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/readinglist/database/ReadingList;

    invoke-virtual {v0}, Lorg/wikipedia/readinglist/database/ReadingList;->pages()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v2, p0, Lorg/wikipedia/readinglist/ReadingListsFragment$2;->val$lists:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/wikipedia/readinglist/database/ReadingList;

    invoke-virtual {v2}, Lorg/wikipedia/readinglist/database/ReadingList;->pages()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lorg/wikipedia/readinglist/ReadingListsFragment$2;->this$0:Lorg/wikipedia/readinglist/ReadingListsFragment;

    .line 370
    invoke-static {v0}, Lorg/wikipedia/readinglist/ReadingListsFragment;->access$700(Lorg/wikipedia/readinglist/ReadingListsFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/wikipedia/readinglist/database/ReadingList;

    invoke-virtual {p1}, Lorg/wikipedia/readinglist/database/ReadingList;->numPagesOffline()I

    move-result p1

    iget-object v0, p0, Lorg/wikipedia/readinglist/ReadingListsFragment$2;->val$lists:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/wikipedia/readinglist/database/ReadingList;

    invoke-virtual {p2}, Lorg/wikipedia/readinglist/database/ReadingList;->numPagesOffline()I

    move-result p2

    if-ne p1, p2, :cond_1

    const/4 v1, 0x1

    :cond_1
    :goto_0
    return v1
.end method

.method public areItemsTheSame(II)Z
    .locals 4

    .line 355
    iget-object v0, p0, Lorg/wikipedia/readinglist/ReadingListsFragment$2;->this$0:Lorg/wikipedia/readinglist/ReadingListsFragment;

    invoke-static {v0}, Lorg/wikipedia/readinglist/ReadingListsFragment;->access$700(Lorg/wikipedia/readinglist/ReadingListsFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-le v0, p1, :cond_1

    iget-object v0, p0, Lorg/wikipedia/readinglist/ReadingListsFragment$2;->val$lists:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gt v0, p2, :cond_0

    goto :goto_0

    .line 358
    :cond_0
    iget-object v0, p0, Lorg/wikipedia/readinglist/ReadingListsFragment$2;->this$0:Lorg/wikipedia/readinglist/ReadingListsFragment;

    invoke-static {v0}, Lorg/wikipedia/readinglist/ReadingListsFragment;->access$700(Lorg/wikipedia/readinglist/ReadingListsFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lorg/wikipedia/readinglist/database/ReadingList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/wikipedia/readinglist/ReadingListsFragment$2;->val$lists:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lorg/wikipedia/readinglist/database/ReadingList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/wikipedia/readinglist/ReadingListsFragment$2;->this$0:Lorg/wikipedia/readinglist/ReadingListsFragment;

    .line 359
    invoke-static {v0}, Lorg/wikipedia/readinglist/ReadingListsFragment;->access$700(Lorg/wikipedia/readinglist/ReadingListsFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/wikipedia/readinglist/database/ReadingList;

    invoke-virtual {p1}, Lorg/wikipedia/readinglist/database/ReadingList;->id()J

    move-result-wide v2

    iget-object p1, p0, Lorg/wikipedia/readinglist/ReadingListsFragment$2;->val$lists:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/wikipedia/readinglist/database/ReadingList;

    invoke-virtual {p1}, Lorg/wikipedia/readinglist/database/ReadingList;->id()J

    move-result-wide p1

    cmp-long v0, v2, p1

    if-nez v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    :goto_0
    return v1
.end method

.method public getNewListSize()I
    .locals 1

    .line 350
    iget-object v0, p0, Lorg/wikipedia/readinglist/ReadingListsFragment$2;->val$lists:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getOldListSize()I
    .locals 1

    .line 346
    iget-object v0, p0, Lorg/wikipedia/readinglist/ReadingListsFragment$2;->val$lists:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
