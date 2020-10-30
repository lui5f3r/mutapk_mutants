.class Lorg/wikipedia/edit/EditHandler$EditMenuClickListener;
.super Ljava/lang/Object;
.source "EditHandler.java"

# interfaces
.implements Landroidx/appcompat/widget/PopupMenu$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/wikipedia/edit/EditHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EditMenuClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/wikipedia/edit/EditHandler;


# direct methods
.method private constructor <init>(Lorg/wikipedia/edit/EditHandler;)V
    .locals 0

    .line 99
    iput-object p1, p0, Lorg/wikipedia/edit/EditHandler$EditMenuClickListener;->this$0:Lorg/wikipedia/edit/EditHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/wikipedia/edit/EditHandler;Lorg/wikipedia/edit/EditHandler$1;)V
    .locals 0

    .line 99
    invoke-direct {p0, p1}, Lorg/wikipedia/edit/EditHandler$EditMenuClickListener;-><init>(Lorg/wikipedia/edit/EditHandler;)V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 3

    .line 102
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_0

    return v0

    .line 107
    :pswitch_0
    iget-object p1, p0, Lorg/wikipedia/edit/EditHandler$EditMenuClickListener;->this$0:Lorg/wikipedia/edit/EditHandler;

    invoke-virtual {p1, v0, v2}, Lorg/wikipedia/edit/EditHandler;->startEditingSection(ILjava/lang/String;)V

    return v1

    .line 104
    :pswitch_1
    iget-object p1, p0, Lorg/wikipedia/edit/EditHandler$EditMenuClickListener;->this$0:Lorg/wikipedia/edit/EditHandler;

    invoke-static {p1}, Lorg/wikipedia/edit/EditHandler;->access$100(Lorg/wikipedia/edit/EditHandler;)Lorg/wikipedia/page/PageFragment;

    move-result-object p1

    invoke-virtual {p1, v2}, Lorg/wikipedia/page/PageFragment;->verifyBeforeEditingDescription(Ljava/lang/String;)V

    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x7f090243
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
