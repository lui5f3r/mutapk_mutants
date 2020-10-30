.class Lorg/wikipedia/readinglist/ReadingListBookmarkMenu$PageSaveMenuClickListener;
.super Ljava/lang/Object;
.source "ReadingListBookmarkMenu.java"

# interfaces
.implements Landroidx/appcompat/widget/PopupMenu$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/wikipedia/readinglist/ReadingListBookmarkMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PageSaveMenuClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/wikipedia/readinglist/ReadingListBookmarkMenu;


# direct methods
.method private constructor <init>(Lorg/wikipedia/readinglist/ReadingListBookmarkMenu;)V
    .locals 0

    .line 121
    iput-object p1, p0, Lorg/wikipedia/readinglist/ReadingListBookmarkMenu$PageSaveMenuClickListener;->this$0:Lorg/wikipedia/readinglist/ReadingListBookmarkMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/wikipedia/readinglist/ReadingListBookmarkMenu;Lorg/wikipedia/readinglist/ReadingListBookmarkMenu$1;)V
    .locals 0

    .line 121
    invoke-direct {p0, p1}, Lorg/wikipedia/readinglist/ReadingListBookmarkMenu$PageSaveMenuClickListener;-><init>(Lorg/wikipedia/readinglist/ReadingListBookmarkMenu;)V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 3

    .line 124
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    sparse-switch p1, :sswitch_data_0

    return v0

    .line 150
    :sswitch_0
    iget-object p1, p0, Lorg/wikipedia/readinglist/ReadingListBookmarkMenu$PageSaveMenuClickListener;->this$0:Lorg/wikipedia/readinglist/ReadingListBookmarkMenu;

    invoke-static {p1}, Lorg/wikipedia/readinglist/ReadingListBookmarkMenu;->access$400(Lorg/wikipedia/readinglist/ReadingListBookmarkMenu;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/wikipedia/readinglist/ReadingListBookmarkMenu;->access$500(Lorg/wikipedia/readinglist/ReadingListBookmarkMenu;Landroid/content/Context;)V

    return v1

    .line 144
    :sswitch_1
    iget-object p1, p0, Lorg/wikipedia/readinglist/ReadingListBookmarkMenu$PageSaveMenuClickListener;->this$0:Lorg/wikipedia/readinglist/ReadingListBookmarkMenu;

    invoke-static {p1}, Lorg/wikipedia/readinglist/ReadingListBookmarkMenu;->access$100(Lorg/wikipedia/readinglist/ReadingListBookmarkMenu;)Lorg/wikipedia/readinglist/ReadingListBookmarkMenu$Callback;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/wikipedia/readinglist/ReadingListBookmarkMenu$PageSaveMenuClickListener;->this$0:Lorg/wikipedia/readinglist/ReadingListBookmarkMenu;

    invoke-static {p1}, Lorg/wikipedia/readinglist/ReadingListBookmarkMenu;->access$200(Lorg/wikipedia/readinglist/ReadingListBookmarkMenu;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 145
    iget-object p1, p0, Lorg/wikipedia/readinglist/ReadingListBookmarkMenu$PageSaveMenuClickListener;->this$0:Lorg/wikipedia/readinglist/ReadingListBookmarkMenu;

    invoke-static {p1}, Lorg/wikipedia/readinglist/ReadingListBookmarkMenu;->access$100(Lorg/wikipedia/readinglist/ReadingListBookmarkMenu;)Lorg/wikipedia/readinglist/ReadingListBookmarkMenu$Callback;

    move-result-object p1

    iget-object v2, p0, Lorg/wikipedia/readinglist/ReadingListBookmarkMenu$PageSaveMenuClickListener;->this$0:Lorg/wikipedia/readinglist/ReadingListBookmarkMenu;

    invoke-static {v2}, Lorg/wikipedia/readinglist/ReadingListBookmarkMenu;->access$300(Lorg/wikipedia/readinglist/ReadingListBookmarkMenu;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/wikipedia/readinglist/database/ReadingList;

    invoke-virtual {v2}, Lorg/wikipedia/readinglist/database/ReadingList;->pages()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/readinglist/database/ReadingListPage;

    invoke-interface {p1, v0}, Lorg/wikipedia/readinglist/ReadingListBookmarkMenu$Callback;->onMoveRequest(Lorg/wikipedia/readinglist/database/ReadingListPage;)V

    :cond_0
    return v1

    .line 132
    :sswitch_2
    iget-object p1, p0, Lorg/wikipedia/readinglist/ReadingListBookmarkMenu$PageSaveMenuClickListener;->this$0:Lorg/wikipedia/readinglist/ReadingListBookmarkMenu;

    invoke-static {p1}, Lorg/wikipedia/readinglist/ReadingListBookmarkMenu;->access$100(Lorg/wikipedia/readinglist/ReadingListBookmarkMenu;)Lorg/wikipedia/readinglist/ReadingListBookmarkMenu$Callback;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 133
    iget-object p1, p0, Lorg/wikipedia/readinglist/ReadingListBookmarkMenu$PageSaveMenuClickListener;->this$0:Lorg/wikipedia/readinglist/ReadingListBookmarkMenu;

    invoke-static {p1}, Lorg/wikipedia/readinglist/ReadingListBookmarkMenu;->access$100(Lorg/wikipedia/readinglist/ReadingListBookmarkMenu;)Lorg/wikipedia/readinglist/ReadingListBookmarkMenu$Callback;

    move-result-object p1

    invoke-interface {p1}, Lorg/wikipedia/readinglist/ReadingListBookmarkMenu$Callback;->onShare()V

    :cond_1
    return v1

    .line 126
    :sswitch_3
    iget-object p1, p0, Lorg/wikipedia/readinglist/ReadingListBookmarkMenu$PageSaveMenuClickListener;->this$0:Lorg/wikipedia/readinglist/ReadingListBookmarkMenu;

    invoke-static {p1}, Lorg/wikipedia/readinglist/ReadingListBookmarkMenu;->access$100(Lorg/wikipedia/readinglist/ReadingListBookmarkMenu;)Lorg/wikipedia/readinglist/ReadingListBookmarkMenu$Callback;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 127
    iget-object p1, p0, Lorg/wikipedia/readinglist/ReadingListBookmarkMenu$PageSaveMenuClickListener;->this$0:Lorg/wikipedia/readinglist/ReadingListBookmarkMenu;

    invoke-static {p1}, Lorg/wikipedia/readinglist/ReadingListBookmarkMenu;->access$100(Lorg/wikipedia/readinglist/ReadingListBookmarkMenu;)Lorg/wikipedia/readinglist/ReadingListBookmarkMenu$Callback;

    move-result-object p1

    invoke-interface {p1, v1}, Lorg/wikipedia/readinglist/ReadingListBookmarkMenu$Callback;->onAddRequest(Z)V

    :cond_2
    return v1

    .line 138
    :sswitch_4
    iget-object p1, p0, Lorg/wikipedia/readinglist/ReadingListBookmarkMenu$PageSaveMenuClickListener;->this$0:Lorg/wikipedia/readinglist/ReadingListBookmarkMenu;

    invoke-static {p1}, Lorg/wikipedia/readinglist/ReadingListBookmarkMenu;->access$100(Lorg/wikipedia/readinglist/ReadingListBookmarkMenu;)Lorg/wikipedia/readinglist/ReadingListBookmarkMenu$Callback;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lorg/wikipedia/readinglist/ReadingListBookmarkMenu$PageSaveMenuClickListener;->this$0:Lorg/wikipedia/readinglist/ReadingListBookmarkMenu;

    invoke-static {p1}, Lorg/wikipedia/readinglist/ReadingListBookmarkMenu;->access$200(Lorg/wikipedia/readinglist/ReadingListBookmarkMenu;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 139
    iget-object p1, p0, Lorg/wikipedia/readinglist/ReadingListBookmarkMenu$PageSaveMenuClickListener;->this$0:Lorg/wikipedia/readinglist/ReadingListBookmarkMenu;

    invoke-static {p1}, Lorg/wikipedia/readinglist/ReadingListBookmarkMenu;->access$100(Lorg/wikipedia/readinglist/ReadingListBookmarkMenu;)Lorg/wikipedia/readinglist/ReadingListBookmarkMenu$Callback;

    move-result-object p1

    invoke-interface {p1, v0}, Lorg/wikipedia/readinglist/ReadingListBookmarkMenu$Callback;->onAddRequest(Z)V

    :cond_3
    return v1

    :sswitch_data_0
    .sparse-switch
        0x7f09021e -> :sswitch_4
        0x7f090228 -> :sswitch_3
        0x7f090229 -> :sswitch_2
        0x7f09023b -> :sswitch_1
        0x7f09024a -> :sswitch_0
    .end sparse-switch
.end method
