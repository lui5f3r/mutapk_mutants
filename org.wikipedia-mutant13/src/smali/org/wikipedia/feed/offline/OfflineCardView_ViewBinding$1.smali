.class Lorg/wikipedia/feed/offline/OfflineCardView_ViewBinding$1;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "OfflineCardView_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/wikipedia/feed/offline/OfflineCardView_ViewBinding;-><init>(Lorg/wikipedia/feed/offline/OfflineCardView;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/wikipedia/feed/offline/OfflineCardView_ViewBinding;

.field final synthetic val$target:Lorg/wikipedia/feed/offline/OfflineCardView;


# direct methods
.method constructor <init>(Lorg/wikipedia/feed/offline/OfflineCardView_ViewBinding;Lorg/wikipedia/feed/offline/OfflineCardView;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lorg/wikipedia/feed/offline/OfflineCardView_ViewBinding$1;->this$0:Lorg/wikipedia/feed/offline/OfflineCardView_ViewBinding;

    iput-object p2, p0, Lorg/wikipedia/feed/offline/OfflineCardView_ViewBinding$1;->val$target:Lorg/wikipedia/feed/offline/OfflineCardView;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 0

    .line 36
    iget-object p1, p0, Lorg/wikipedia/feed/offline/OfflineCardView_ViewBinding$1;->val$target:Lorg/wikipedia/feed/offline/OfflineCardView;

    invoke-virtual {p1}, Lorg/wikipedia/feed/offline/OfflineCardView;->onRetryClick()V

    return-void
.end method
