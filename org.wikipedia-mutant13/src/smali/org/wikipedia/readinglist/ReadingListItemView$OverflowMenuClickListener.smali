.class Lorg/wikipedia/readinglist/ReadingListItemView$OverflowMenuClickListener;
.super Ljava/lang/Object;
.source "ReadingListItemView.java"

# interfaces
.implements Landroidx/appcompat/widget/PopupMenu$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/wikipedia/readinglist/ReadingListItemView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OverflowMenuClickListener"
.end annotation


# instance fields
.field private list:Lorg/wikipedia/readinglist/database/ReadingList;

.field final synthetic this$0:Lorg/wikipedia/readinglist/ReadingListItemView;


# direct methods
.method constructor <init>(Lorg/wikipedia/readinglist/ReadingListItemView;Lorg/wikipedia/readinglist/database/ReadingList;)V
    .locals 0

    .line 238
    iput-object p1, p0, Lorg/wikipedia/readinglist/ReadingListItemView$OverflowMenuClickListener;->this$0:Lorg/wikipedia/readinglist/ReadingListItemView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 239
    iput-object p2, p0, Lorg/wikipedia/readinglist/ReadingListItemView$OverflowMenuClickListener;->list:Lorg/wikipedia/readinglist/database/ReadingList;

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 2

    .line 243
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const/4 v0, 0x1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 257
    :pswitch_0
    iget-object p1, p0, Lorg/wikipedia/readinglist/ReadingListItemView$OverflowMenuClickListener;->this$0:Lorg/wikipedia/readinglist/ReadingListItemView;

    invoke-static {p1}, Lorg/wikipedia/readinglist/ReadingListItemView;->access$000(Lorg/wikipedia/readinglist/ReadingListItemView;)Lorg/wikipedia/readinglist/ReadingListItemView$Callback;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/wikipedia/readinglist/ReadingListItemView$OverflowMenuClickListener;->list:Lorg/wikipedia/readinglist/database/ReadingList;

    if-eqz p1, :cond_0

    .line 258
    iget-object p1, p0, Lorg/wikipedia/readinglist/ReadingListItemView$OverflowMenuClickListener;->this$0:Lorg/wikipedia/readinglist/ReadingListItemView;

    invoke-static {p1}, Lorg/wikipedia/readinglist/ReadingListItemView;->access$000(Lorg/wikipedia/readinglist/ReadingListItemView;)Lorg/wikipedia/readinglist/ReadingListItemView$Callback;

    move-result-object p1

    iget-object v1, p0, Lorg/wikipedia/readinglist/ReadingListItemView$OverflowMenuClickListener;->list:Lorg/wikipedia/readinglist/database/ReadingList;

    invoke-interface {p1, v1}, Lorg/wikipedia/readinglist/ReadingListItemView$Callback;->onSaveAllOffline(Lorg/wikipedia/readinglist/database/ReadingList;)V

    return v0

    .line 245
    :pswitch_1
    iget-object p1, p0, Lorg/wikipedia/readinglist/ReadingListItemView$OverflowMenuClickListener;->this$0:Lorg/wikipedia/readinglist/ReadingListItemView;

    invoke-static {p1}, Lorg/wikipedia/readinglist/ReadingListItemView;->access$000(Lorg/wikipedia/readinglist/ReadingListItemView;)Lorg/wikipedia/readinglist/ReadingListItemView$Callback;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/wikipedia/readinglist/ReadingListItemView$OverflowMenuClickListener;->list:Lorg/wikipedia/readinglist/database/ReadingList;

    if-eqz p1, :cond_0

    .line 246
    iget-object p1, p0, Lorg/wikipedia/readinglist/ReadingListItemView$OverflowMenuClickListener;->this$0:Lorg/wikipedia/readinglist/ReadingListItemView;

    invoke-static {p1}, Lorg/wikipedia/readinglist/ReadingListItemView;->access$000(Lorg/wikipedia/readinglist/ReadingListItemView;)Lorg/wikipedia/readinglist/ReadingListItemView$Callback;

    move-result-object p1

    iget-object v1, p0, Lorg/wikipedia/readinglist/ReadingListItemView$OverflowMenuClickListener;->list:Lorg/wikipedia/readinglist/database/ReadingList;

    invoke-interface {p1, v1}, Lorg/wikipedia/readinglist/ReadingListItemView$Callback;->onRename(Lorg/wikipedia/readinglist/database/ReadingList;)V

    return v0

    .line 263
    :pswitch_2
    iget-object p1, p0, Lorg/wikipedia/readinglist/ReadingListItemView$OverflowMenuClickListener;->this$0:Lorg/wikipedia/readinglist/ReadingListItemView;

    invoke-static {p1}, Lorg/wikipedia/readinglist/ReadingListItemView;->access$000(Lorg/wikipedia/readinglist/ReadingListItemView;)Lorg/wikipedia/readinglist/ReadingListItemView$Callback;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/wikipedia/readinglist/ReadingListItemView$OverflowMenuClickListener;->list:Lorg/wikipedia/readinglist/database/ReadingList;

    if-eqz p1, :cond_0

    .line 264
    iget-object p1, p0, Lorg/wikipedia/readinglist/ReadingListItemView$OverflowMenuClickListener;->this$0:Lorg/wikipedia/readinglist/ReadingListItemView;

    invoke-static {p1}, Lorg/wikipedia/readinglist/ReadingListItemView;->access$000(Lorg/wikipedia/readinglist/ReadingListItemView;)Lorg/wikipedia/readinglist/ReadingListItemView$Callback;

    move-result-object p1

    iget-object v1, p0, Lorg/wikipedia/readinglist/ReadingListItemView$OverflowMenuClickListener;->list:Lorg/wikipedia/readinglist/database/ReadingList;

    invoke-interface {p1, v1}, Lorg/wikipedia/readinglist/ReadingListItemView$Callback;->onRemoveAllOffline(Lorg/wikipedia/readinglist/database/ReadingList;)V

    return v0

    .line 251
    :pswitch_3
    iget-object p1, p0, Lorg/wikipedia/readinglist/ReadingListItemView$OverflowMenuClickListener;->this$0:Lorg/wikipedia/readinglist/ReadingListItemView;

    invoke-static {p1}, Lorg/wikipedia/readinglist/ReadingListItemView;->access$000(Lorg/wikipedia/readinglist/ReadingListItemView;)Lorg/wikipedia/readinglist/ReadingListItemView$Callback;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/wikipedia/readinglist/ReadingListItemView$OverflowMenuClickListener;->list:Lorg/wikipedia/readinglist/database/ReadingList;

    if-eqz p1, :cond_0

    .line 252
    iget-object p1, p0, Lorg/wikipedia/readinglist/ReadingListItemView$OverflowMenuClickListener;->this$0:Lorg/wikipedia/readinglist/ReadingListItemView;

    invoke-static {p1}, Lorg/wikipedia/readinglist/ReadingListItemView;->access$000(Lorg/wikipedia/readinglist/ReadingListItemView;)Lorg/wikipedia/readinglist/ReadingListItemView$Callback;

    move-result-object p1

    iget-object v1, p0, Lorg/wikipedia/readinglist/ReadingListItemView$OverflowMenuClickListener;->list:Lorg/wikipedia/readinglist/database/ReadingList;

    invoke-interface {p1, v1}, Lorg/wikipedia/readinglist/ReadingListItemView$Callback;->onDelete(Lorg/wikipedia/readinglist/database/ReadingList;)V

    return v0

    :cond_0
    :goto_0
    const/4 p1, 0x0

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x7f090245
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
