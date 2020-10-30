.class Lorg/wikipedia/feed/configure/ConfigureFragment$ConfigureItemHolder;
.super Lorg/wikipedia/views/DefaultViewHolder;
.source "ConfigureFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/wikipedia/feed/configure/ConfigureFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConfigureItemHolder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/wikipedia/views/DefaultViewHolder<",
        "Lorg/wikipedia/feed/configure/ConfigureItemView;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/wikipedia/feed/configure/ConfigureFragment;


# direct methods
.method constructor <init>(Lorg/wikipedia/feed/configure/ConfigureFragment;Lorg/wikipedia/feed/configure/ConfigureItemView;)V
    .locals 0

    .line 237
    iput-object p1, p0, Lorg/wikipedia/feed/configure/ConfigureFragment$ConfigureItemHolder;->this$0:Lorg/wikipedia/feed/configure/ConfigureFragment;

    .line 238
    invoke-direct {p0, p2}, Lorg/wikipedia/views/DefaultViewHolder;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method bindItem(Lorg/wikipedia/feed/FeedContentType;)V
    .locals 1

    .line 242
    invoke-virtual {p0}, Lorg/wikipedia/views/DefaultViewHolder;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/feed/configure/ConfigureItemView;

    invoke-virtual {v0, p1}, Lorg/wikipedia/feed/configure/ConfigureItemView;->setContents(Lorg/wikipedia/feed/FeedContentType;)V

    return-void
.end method
