.class Lorg/wikipedia/feed/view/CardHeaderView$CardHeaderMenuClickListener;
.super Ljava/lang/Object;
.source "CardHeaderView.java"

# interfaces
.implements Landroidx/appcompat/widget/PopupMenu$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/wikipedia/feed/view/CardHeaderView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CardHeaderMenuClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/wikipedia/feed/view/CardHeaderView;


# direct methods
.method private constructor <init>(Lorg/wikipedia/feed/view/CardHeaderView;)V
    .locals 0

    .line 135
    iput-object p1, p0, Lorg/wikipedia/feed/view/CardHeaderView$CardHeaderMenuClickListener;->this$0:Lorg/wikipedia/feed/view/CardHeaderView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/wikipedia/feed/view/CardHeaderView;Lorg/wikipedia/feed/view/CardHeaderView$1;)V
    .locals 0

    .line 135
    invoke-direct {p0, p1}, Lorg/wikipedia/feed/view/CardHeaderView$CardHeaderMenuClickListener;-><init>(Lorg/wikipedia/feed/view/CardHeaderView;)V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 3

    .line 138
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    return v1

    .line 146
    :pswitch_0
    iget-object p1, p0, Lorg/wikipedia/feed/view/CardHeaderView$CardHeaderMenuClickListener;->this$0:Lorg/wikipedia/feed/view/CardHeaderView;

    invoke-static {p1}, Lorg/wikipedia/feed/view/CardHeaderView;->access$100(Lorg/wikipedia/feed/view/CardHeaderView;)Lorg/wikipedia/feed/view/CardHeaderView$Callback;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-object v2, p0, Lorg/wikipedia/feed/view/CardHeaderView$CardHeaderMenuClickListener;->this$0:Lorg/wikipedia/feed/view/CardHeaderView;

    invoke-static {v2}, Lorg/wikipedia/feed/view/CardHeaderView;->access$200(Lorg/wikipedia/feed/view/CardHeaderView;)Lorg/wikipedia/feed/model/Card;

    move-result-object v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    and-int/2addr p1, v1

    if-eqz p1, :cond_2

    .line 147
    iget-object p1, p0, Lorg/wikipedia/feed/view/CardHeaderView$CardHeaderMenuClickListener;->this$0:Lorg/wikipedia/feed/view/CardHeaderView;

    invoke-static {p1}, Lorg/wikipedia/feed/view/CardHeaderView;->access$100(Lorg/wikipedia/feed/view/CardHeaderView;)Lorg/wikipedia/feed/view/CardHeaderView$Callback;

    move-result-object p1

    iget-object v1, p0, Lorg/wikipedia/feed/view/CardHeaderView$CardHeaderMenuClickListener;->this$0:Lorg/wikipedia/feed/view/CardHeaderView;

    invoke-static {v1}, Lorg/wikipedia/feed/view/CardHeaderView;->access$200(Lorg/wikipedia/feed/view/CardHeaderView;)Lorg/wikipedia/feed/model/Card;

    move-result-object v1

    invoke-interface {p1, v1}, Lorg/wikipedia/feed/view/CardHeaderView$Callback;->onRequestEditCardLanguages(Lorg/wikipedia/feed/model/Card;)V

    :cond_2
    return v0

    .line 140
    :pswitch_1
    iget-object p1, p0, Lorg/wikipedia/feed/view/CardHeaderView$CardHeaderMenuClickListener;->this$0:Lorg/wikipedia/feed/view/CardHeaderView;

    invoke-static {p1}, Lorg/wikipedia/feed/view/CardHeaderView;->access$100(Lorg/wikipedia/feed/view/CardHeaderView;)Lorg/wikipedia/feed/view/CardHeaderView$Callback;

    move-result-object p1

    if-eqz p1, :cond_3

    const/4 p1, 0x1

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    :goto_1
    iget-object v2, p0, Lorg/wikipedia/feed/view/CardHeaderView$CardHeaderMenuClickListener;->this$0:Lorg/wikipedia/feed/view/CardHeaderView;

    invoke-static {v2}, Lorg/wikipedia/feed/view/CardHeaderView;->access$200(Lorg/wikipedia/feed/view/CardHeaderView;)Lorg/wikipedia/feed/model/Card;

    move-result-object v2

    if-eqz v2, :cond_4

    goto :goto_2

    :cond_4
    const/4 v0, 0x0

    :goto_2
    and-int/2addr p1, v0

    if-eqz p1, :cond_5

    .line 141
    iget-object p1, p0, Lorg/wikipedia/feed/view/CardHeaderView$CardHeaderMenuClickListener;->this$0:Lorg/wikipedia/feed/view/CardHeaderView;

    invoke-static {p1}, Lorg/wikipedia/feed/view/CardHeaderView;->access$100(Lorg/wikipedia/feed/view/CardHeaderView;)Lorg/wikipedia/feed/view/CardHeaderView$Callback;

    move-result-object p1

    iget-object v0, p0, Lorg/wikipedia/feed/view/CardHeaderView$CardHeaderMenuClickListener;->this$0:Lorg/wikipedia/feed/view/CardHeaderView;

    invoke-static {v0}, Lorg/wikipedia/feed/view/CardHeaderView;->access$200(Lorg/wikipedia/feed/view/CardHeaderView;)Lorg/wikipedia/feed/model/Card;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/wikipedia/feed/view/CardHeaderView$Callback;->onRequestDismissCard(Lorg/wikipedia/feed/model/Card;)Z

    move-result p1

    return p1

    :cond_5
    return v1

    .line 152
    :pswitch_2
    iget-object p1, p0, Lorg/wikipedia/feed/view/CardHeaderView$CardHeaderMenuClickListener;->this$0:Lorg/wikipedia/feed/view/CardHeaderView;

    invoke-static {p1}, Lorg/wikipedia/feed/view/CardHeaderView;->access$100(Lorg/wikipedia/feed/view/CardHeaderView;)Lorg/wikipedia/feed/view/CardHeaderView$Callback;

    move-result-object p1

    if-eqz p1, :cond_6

    const/4 p1, 0x1

    goto :goto_3

    :cond_6
    const/4 p1, 0x0

    :goto_3
    iget-object v2, p0, Lorg/wikipedia/feed/view/CardHeaderView$CardHeaderMenuClickListener;->this$0:Lorg/wikipedia/feed/view/CardHeaderView;

    invoke-static {v2}, Lorg/wikipedia/feed/view/CardHeaderView;->access$200(Lorg/wikipedia/feed/view/CardHeaderView;)Lorg/wikipedia/feed/model/Card;

    move-result-object v2

    if-eqz v2, :cond_7

    const/4 v1, 0x1

    :cond_7
    and-int/2addr p1, v1

    if-eqz p1, :cond_8

    .line 153
    iget-object p1, p0, Lorg/wikipedia/feed/view/CardHeaderView$CardHeaderMenuClickListener;->this$0:Lorg/wikipedia/feed/view/CardHeaderView;

    invoke-static {p1}, Lorg/wikipedia/feed/view/CardHeaderView;->access$100(Lorg/wikipedia/feed/view/CardHeaderView;)Lorg/wikipedia/feed/view/CardHeaderView$Callback;

    move-result-object p1

    iget-object v1, p0, Lorg/wikipedia/feed/view/CardHeaderView$CardHeaderMenuClickListener;->this$0:Lorg/wikipedia/feed/view/CardHeaderView;

    invoke-static {v1}, Lorg/wikipedia/feed/view/CardHeaderView;->access$200(Lorg/wikipedia/feed/view/CardHeaderView;)Lorg/wikipedia/feed/model/Card;

    move-result-object v1

    invoke-interface {p1, v1}, Lorg/wikipedia/feed/view/CardHeaderView$Callback;->onRequestCustomize(Lorg/wikipedia/feed/model/Card;)V

    :cond_8
    return v0

    :pswitch_data_0
    .packed-switch 0x7f090225
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
