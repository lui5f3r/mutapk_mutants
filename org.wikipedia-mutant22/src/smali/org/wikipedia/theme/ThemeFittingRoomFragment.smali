.class public Lorg/wikipedia/theme/ThemeFittingRoomFragment;
.super Landroidx/fragment/app/Fragment;
.source "ThemeFittingRoomFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/wikipedia/theme/ThemeFittingRoomFragment$EventBusConsumer;
    }
.end annotation


# instance fields
.field private disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

.field testImage:Lorg/wikipedia/views/FaceAndColorDetectImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field testText:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field testTitle:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private unbinder:Lbutterknife/Unbinder;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 29
    new-instance v0, Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-direct {v0}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;-><init>()V

    iput-object v0, p0, Lorg/wikipedia/theme/ThemeFittingRoomFragment;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    return-void
.end method

.method static synthetic access$100(Lorg/wikipedia/theme/ThemeFittingRoomFragment;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Lorg/wikipedia/theme/ThemeFittingRoomFragment;->updateTextSize()V

    return-void
.end method

.method public static newInstance()Lorg/wikipedia/theme/ThemeFittingRoomFragment;
    .locals 1

    .line 32
    new-instance v0, Lorg/wikipedia/theme/ThemeFittingRoomFragment;

    invoke-direct {v0}, Lorg/wikipedia/theme/ThemeFittingRoomFragment;-><init>()V

    return-object v0
.end method

.method private updateTextSize()V
    .locals 3

    .line 57
    invoke-static {}, Lorg/wikipedia/WikipediaApp;->getInstance()Lorg/wikipedia/WikipediaApp;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/wikipedia/WikipediaApp;->getFontSize(Landroid/view/Window;)F

    move-result v0

    .line 58
    iget-object v1, p0, Lorg/wikipedia/theme/ThemeFittingRoomFragment;->testText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 59
    iget-object v1, p0, Lorg/wikipedia/theme/ThemeFittingRoomFragment;->testTitle:Landroid/widget/TextView;

    const v2, 0x3fcccccd    # 1.6f

    mul-float v0, v0, v2

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextSize(F)V

    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const p3, 0x7f0c0069

    const/4 v0, 0x0

    .line 37
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 38
    invoke-static {p0, p1}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    move-result-object p2

    iput-object p2, p0, Lorg/wikipedia/theme/ThemeFittingRoomFragment;->unbinder:Lbutterknife/Unbinder;

    .line 40
    iget-object p2, p0, Lorg/wikipedia/theme/ThemeFittingRoomFragment;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-static {}, Lorg/wikipedia/WikipediaApp;->getInstance()Lorg/wikipedia/WikipediaApp;

    move-result-object p3

    invoke-virtual {p3}, Lorg/wikipedia/WikipediaApp;->getBus()Lorg/wikipedia/concurrency/RxBus;

    move-result-object p3

    new-instance v0, Lorg/wikipedia/theme/ThemeFittingRoomFragment$EventBusConsumer;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/wikipedia/theme/ThemeFittingRoomFragment$EventBusConsumer;-><init>(Lorg/wikipedia/theme/ThemeFittingRoomFragment;Lorg/wikipedia/theme/ThemeFittingRoomFragment$1;)V

    invoke-virtual {p3, v0}, Lorg/wikipedia/concurrency/RxBus;->subscribe(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object p3

    invoke-virtual {p2, p3}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->add(Lio/reactivex/rxjava3/disposables/Disposable;)Z

    .line 42
    iget-object p2, p0, Lorg/wikipedia/theme/ThemeFittingRoomFragment;->testImage:Lorg/wikipedia/views/FaceAndColorDetectImageView;

    const p3, 0x7f08017b

    invoke-virtual {p2, p3}, Lorg/wikipedia/views/FaceAndColorDetectImageView;->loadImage(I)V

    .line 43
    invoke-direct {p0}, Lorg/wikipedia/theme/ThemeFittingRoomFragment;->updateTextSize()V

    return-object p1
.end method

.method public onDestroyView()V
    .locals 1

    .line 49
    iget-object v0, p0, Lorg/wikipedia/theme/ThemeFittingRoomFragment;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-virtual {v0}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->clear()V

    .line 50
    iget-object v0, p0, Lorg/wikipedia/theme/ThemeFittingRoomFragment;->unbinder:Lbutterknife/Unbinder;

    invoke-interface {v0}, Lbutterknife/Unbinder;->unbind()V

    const/4 v0, 0x0

    .line 51
    iput-object v0, p0, Lorg/wikipedia/theme/ThemeFittingRoomFragment;->unbinder:Lbutterknife/Unbinder;

    .line 52
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    return-void
.end method
