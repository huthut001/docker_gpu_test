import torch

def main():
    if torch.cuda.is_available():
        print('CUDA is available')
        device = torch.cuda.current_device()
        print(f'Using CUDA device: {torch.cuda.get_device_name(device)}')
    else:
        print('CUDA is NOT available')

if __name__ == "__main__":
    main()
